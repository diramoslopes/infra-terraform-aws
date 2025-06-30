provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dimais" {
  bucket = "my-tf-test-bucket-dimais"

  tags = {
    Name        = "My bucket Dimais"
    Environment = "Dev"
  }
}