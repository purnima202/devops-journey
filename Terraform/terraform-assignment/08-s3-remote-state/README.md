# Tutorial 8 – Store Remote State in Amazon S3

## Objective
Learn how to store Terraform state remotely using Amazon S3.

## Key Learnings
- Remote state allows teams to share infrastructure state.
- S3 stores Terraform state files centrally.
- S3 versioning helps recover previous state versions.
- S3 native locking prevents concurrent state modifications.
- Backend configuration is defined inside Terraform.

## AWS Services Used
- Amazon S3
- Amazon EC2

## Terraform Commands Practiced
- terraform init
- terraform fmt
- terraform validate
- terraform plan
- terraform apply
- terraform output
- terraform state list
- terraform destroy

## Cleanup
EC2 instance destroyed and S3 bucket deleted after the exercise.

## Status
Completed.