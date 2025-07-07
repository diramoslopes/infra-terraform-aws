provider "aws" {
  region = var.aws_region
}

terraform {
    backend "s3" {
    bucket = "tfstate-756673141074"
    key    = "dev/usando-remote-state-bucket/terraform.tfstate"
    region = "us-east-1"
  }
}