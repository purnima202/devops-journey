# Tutorial 2 – Install Terraform

## Overview
Installed Terraform and verified the local AWS CLI configuration.

## Environment Details
- Operating System: Windows 11
- Terraform Version: 1.15.6
- AWS CLI Version: 2.35.8
- AWS Region: us-east-1
- Installation Method: Chocolatey

## Verification
- Terraform version successfully verified using its installed executable.
- AWS CLI version successfully verified.
- AWS credentials successfully verified using `aws sts get-caller-identity`.

## Key Learning
Terraform CLI is used to manage infrastructure through configuration files. AWS CLI credentials allow Terraform to authenticate with AWS.

## Screenshots
- `../screenshots/02-install-terraform/terraform-version.png`
- `../screenshots/02-install-terraform/aws-identity.png`

## Note
The normal Terraform command currently encounters a Windows Application Control issue. The installed Terraform executable works when invoked directly.