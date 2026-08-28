output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.practice.bucket
}

output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "aws_current_region"{
  value = data.aws_region.current.region
}

output "module_bucket_name" {
  value = module.practice_bucket.bucket_name
}