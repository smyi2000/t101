variable "fruits" {
  description = "fruits list"
  type = list(string)
  default = ["apple", "banana", "strawberry"]
}

output "for_directive_index_if" {
  value = <<EOF
%{ for i, fruits in var.fruits }
  ${fruits}%{ if i < length(var.fruits) - 1 }, %{ endif }
%{ endfor }
EOF
}