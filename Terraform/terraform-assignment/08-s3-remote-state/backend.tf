terraform {
  backend "s3" {
    bucket       = "purnima-tf-state-46309965"
    key          = "terraform-assignment/08-s3-remote-state/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}