provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "dimais" {
  bucket = "my-tf-test-bucket-dimais"
  tags   = var.tags
}