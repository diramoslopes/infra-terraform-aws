resource "aws_s3_bucket" "dimais" {
  bucket = "my-tf-test-bucket-dimais"
  tags   = var.tags
  region = var.aws_region_oregon
}