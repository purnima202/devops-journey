# Terraform AWS Practice

## What I Learned

In this lab, I practiced using Terraform to create and manage AWS resources.

## Concepts Practiced

- Terraform provider configuration
- AWS provider
- AWS S3 bucket
- Terraform variables
- Terraform outputs
- Terraform data sources
- Terraform modules
- Terraform state
- Terraform state list
- Terraform state pull
- Terraform import
- S3 remote backend
- Terraform state migration
- Backend reconfiguration
- Terraform plan
- Terraform apply
- Terraform init

## AWS Region

The AWS region used for this practice is:

`us-east-1`

## Files

### main.tf

Contains the AWS provider, S3 bucket resources, data sources, and S3 module configuration.

### variables.tf

Contains input variables used by the Terraform configuration.

### outputs.tf

Contains output values from the Terraform resources.

### backend.tf

Configures Amazon S3 as the remote Terraform backend.

### modules/s3/

Contains a reusable S3 bucket module.

The module contains:

- `main.tf`
- `variables.tf`
- `outputs.tf`

## Terraform Commands Practiced

### Initialize Terraform

```bash
terraform init
```

### Create a Plan

```bash
terraform plan
```

### Apply Configuration

```bash
terraform apply
```

### View Terraform State

```bash
terraform state list
```

### Pull Terraform State

```bash
terraform state pull
```

### Import an Existing Resource

```bash
terraform import
```

### Reconfigure Backend

```bash
terraform init -reconfigure
```

### Migrate State

```bash
terraform init -migrate-state
```

## Remote State

I practiced storing Terraform state remotely using an Amazon S3 backend.

The backend configuration uses:

- S3 bucket
- State key
- AWS region
- S3 state locking using `use_lockfile`

## Terraform Module

I created a reusable S3 module:

```text
modules/
└── s3/
    ├── main.tf
    ├── variables.tf
    └── outputs.tf
```

The module is called from the main Terraform configuration.

## Important Note

Terraform state files and `.tfvars` files are excluded from Git using `.gitignore`.

The `.terraform.lock.hcl` file is committed because it records the selected provider versions.