terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Variables
variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Existing AWS EC2 key pair name"
  type        = string
}

variable "private_key_path" {
  description = "Path to the PEM private key on the local machine"
  type        = string
}

variable "ssh_cidr" {
  description = "Your public IP address followed by /32"
  type        = string
}

variable "app_port" {
  default = 3000
}

# AWS Provider
provider "aws" {
  region = var.aws_region
}

# Find Ubuntu 24.04 AMI
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Security Group
resource "aws_security_group" "app_sg" {
  name        = "nodejs-app-security-group"
  description = "Allow SSH and Node.js application access"

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr]
  }

  ingress {
    description = "Node.js application"
    from_port   = var.app_port
    to_port     = var.app_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "app_server" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  associate_public_ip_address = true

  tags = {
    Name = "Terraform-Ansible-NodeJS-Server"
  }

  # Execute Ansible after EC2 creation
  provisioner "local-exec" {
    interpreter = ["/bin/bash", "-c"]

    command = <<-EOT
      set -e

      chmod 600 "${var.private_key_path}"

      cat > "${path.module}/inventory.ini" <<EOF
      [webservers]
      node_app ansible_host=${self.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file='${var.private_key_path}'
      EOF

      echo "Waiting for EC2 SSH connection..."

      for i in {1..30}; do
        if ssh -o StrictHostKeyChecking=no \
               -o UserKnownHostsFile=/dev/null \
               -o ConnectTimeout=5 \
               -i "${var.private_key_path}" \
               ubuntu@${self.public_ip} "echo SSH ready"; then
          break
        fi

        if [ "$i" -eq 30 ]; then
          echo "SSH connection failed"
          exit 1
        fi

        sleep 10
      done

      echo "Starting Ansible deployment..."

      ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook \
        -i "${path.module}/inventory.ini" \
        "${path.module}/playbook.yml"
    EOT
  }
}

# Output
output "ec2_public_ip" {
  value = aws_instance.app_server.public_ip
}

output "application_url" {
  value = "http://${aws_instance.app_server.public_ip}:${var.app_port}"
}