# Assignment 2 – Terraform + Ansible Integration

## Objective

Automate AWS infrastructure provisioning using Terraform and application deployment using Ansible.

The goal is to provision an EC2 instance and deploy a Node.js application automatically using a single `terraform apply` command.

## Technologies

- Terraform
- AWS EC2
- AWS Security Groups
- Ansible
- Ubuntu
- Node.js

## Project Structure

```text
assignment-2/
├── main.tf
├── inventory.ini
├── playbook.yml
├── .terraform.lock.hcl
└── README.md
```

## Implementation

1. Configure the AWS provider.
2. Retrieve the latest Ubuntu AMI.
3. Create an AWS Security Group.
4. Allow SSH (port 22) and application traffic (port 3000).
5. Provision an EC2 instance using Terraform.
6. Retrieve the EC2 public IP dynamically.
7. Generate the Ansible inventory.
8. Wait for SSH connectivity.
9. Execute the Ansible playbook using Terraform's `local-exec` provisioner.
10. Deploy and start the Node.js application.

## Prerequisites

- AWS CLI configured with appropriate permissions.
- Terraform installed.
- Ansible installed.
- Existing AWS EC2 key pair.
- SSH private key available locally.

Run Terraform and Ansible from Ubuntu/WSL.

## Execution

Initialize Terraform:

```bash
terraform init
```

Format configuration:

```bash
terraform fmt
```

Validate configuration:

```bash
terraform validate
```

Preview infrastructure changes:

```bash
terraform plan \
  -var="key_name=YOUR_KEY_PAIR_NAME" \
  -var="private_key_path=/path/to/your-key.pem" \
  -var="ssh_cidr=YOUR_PUBLIC_IP/32"
```

Provision infrastructure and deploy application:

```bash
terraform apply \
  -var="key_name=YOUR_KEY_PAIR_NAME" \
  -var="private_key_path=/path/to/your-key.pem" \
  -var="ssh_cidr=YOUR_PUBLIC_IP/32"
```

## Outputs

Terraform provides:

- EC2 public IP address
- Node.js application URL

## Access Application

```text
http://EC2_PUBLIC_IP:3000
```

## Cleanup

Destroy AWS resources after testing:

```bash
terraform destroy \
  -var="key_name=YOUR_KEY_PAIR_NAME" \
  -var="private_key_path=/path/to/your-key.pem" \
  -var="ssh_cidr=YOUR_PUBLIC_IP/32"
```

## Learning Outcomes

- Terraform infrastructure provisioning
- AWS EC2 and Security Group configuration
- Terraform variables and outputs
- Dynamic Ansible inventory generation
- Terraform local-exec provisioner
- SSH readiness checks
- End-to-end infrastructure and application automation