envinroment = prod

variable "tags" {
  description = "The name tag for the resources."
  type        = map(string)
  default = {
    Name        = "My Dimais Prod"
    Environment = "Prod"
    Owner       = "Diogo Silveira"
    Updated     = "2025-06-30"
  }

}