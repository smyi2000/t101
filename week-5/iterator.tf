

variable "name" {
  type = list(string)
  default = ["s", "m", "y"]
}

output "upper_name" {
  value = [for name in var.name : upper(name)]
}