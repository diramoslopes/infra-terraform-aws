variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "The name tag for the S3 bucket."
  type        = map(string)
  default = {
    Name        = "My Dimais"
    Environment = "Dev"
    Owner       = "Diogo Silveira"
    Updated     = "2025-06-30"
  }

}