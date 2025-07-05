resource "aws_instance" "web_dimais" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  tags          = var.tags
}