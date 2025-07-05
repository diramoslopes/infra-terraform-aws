envinroment = dev

variable "tags" {
  description = "The name tag for the resources."
  type        = map(string)
  default = {
    Name        = "My Dimais Dev"
    Environment = "Dev"
    Owner       = "Diogo Silveira"
    Updated     = "2025-06-30"
  }

}