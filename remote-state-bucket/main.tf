terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
  tags = {
    Name        = "Remote State Bucket"
    Environment = "Dev"
    Owner       = "Diogo Silveira"
    Updated     = "2025-06-30"
  }
}

resource "aws_s3_bucket_versioning" "versioning_remote_state" {
  bucket = aws_s3_bucket.remote-state.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "remote_state_bucket_name" {
  description = "The name of the remote state S3 bucket."
  value       = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
  description = "The ARN of the remote state S3 bucket."
  value       = aws_s3_bucket.remote-state.arn

}