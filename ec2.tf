provider "aws" {
  region = var.aws_region
}


resource "aws_instance" "web_dimais" {
  ami           = "ami-0c803b171269e2d72"
  instance_type = "t2.micro"

  tags = var.tags
}