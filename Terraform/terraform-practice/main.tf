terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "practice" {
  bucket = var.bucket_name

  tags = {
    Environment = "Practice"
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "purnima-terraform-state-20260823"

  tags = {
    Purpose = "Terraform State"
  }
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

module "practice_bucket" {
  source = "./modules/s3"

  bucket_name = "purnima-terraform-module-20260823"
  environment = "Practice"
}

resource "aws_s3_bucket" "imported" {
  bucket = "purnima-terraform-import-20260823"
}