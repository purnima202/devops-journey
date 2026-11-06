# Terraform & Infrastructure as Code Assignment

## Project Overview

This assignment demonstrates the fundamentals of **Infrastructure as Code (IaC)** using **Terraform and AWS**.

I followed the official HashiCorp Terraform AWS tutorials and practised creating, modifying, managing, and destroying AWS infrastructure using Terraform.

## Tools & Technologies

- Terraform
- AWS
- AWS CLI
- Windows PowerShell
- Git & GitHub

## Completed Tutorials

| No. | Tutorial | Key Learning |
|---|---|---|
| 1 | What is Infrastructure as Code with Terraform? | Understood IaC and how Terraform automates infrastructure management. |
| 2 | Install Terraform | Installed Terraform and AWS CLI and verified the setup. |
| 3 | Build Infrastructure | Created an AWS EC2 instance using Terraform. |
| 4 | Change Infrastructure | Modified an existing EC2 instance configuration using Terraform. |
| 5 | Destroy Infrastructure | Learned how to destroy Terraform-managed infrastructure safely. |
| 6 | Define Input Variables | Used input variables to make Terraform configurations reusable. |
| 7 | Query Data with Outputs | Used output blocks to display EC2 instance details such as ID and public IP. |
| 8 | Store Remote State (S3 Backend) | Learned how to store Terraform state remotely in an S3 bucket. |

## Project Structure

```text
terraform-assignment/
│
├── 01-iac-introduction/
├── 02-install-terraform/
├── 03-build-infrastructure/
├── 04-change-infrastructure/
├── 05-destroy-infrastructure/
├── 06-input-variables/
├── 07-outputs/
├── 08-s3-remote-state/
│
├── 09-create-module/
├── 10-registry-modules/
├── 11-versions-providers/
│
├── screenshots/
│   ├── 01-iac-introduction/
│   ├── 02-install-terraform/
│   ├── 03-build-infrastructure/
│   ├── 04-change-infrastructure/
│   ├── 05-destroy-infrastructure/
│   ├── 06-input-variables/
│   ├── 07-outputs/
│   └── 08-s3-remote-state/
│
└── README.md
```

## Practical Work

During this assignment, I performed the following activities:

- Configured the AWS provider in Terraform.
- Created an EC2 instance using an Ubuntu AMI.
- Modified infrastructure using Terraform configuration changes.
- Used input variables and output values.
- Managed Terraform state.
- Configured an S3 remote backend.
- Captured screenshots as practical evidence.
- Destroyed the created AWS resources after completing the exercises to avoid unnecessary charges.

## Key Takeaways

- Understood the fundamentals of Infrastructure as Code.
- Learned how Terraform manages AWS resources.
- Practised the Terraform workflow: `init`, `plan`, `apply`, and `destroy`.
- Learned how variables and outputs improve Terraform configurations.
- Understood the importance of Terraform state and remote state storage.

## Official Learning Resource

[HashiCorp – Get Started with Terraform on AWS](https://developer.hashicorp.com/terraform/tutorials/aws-get-started)