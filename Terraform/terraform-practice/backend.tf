terraform {
  backend "s3" {
    bucket       = "purnima-terraform-state-20260823"
    key          = "terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}