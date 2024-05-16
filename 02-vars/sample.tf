variable "sample" {
    default = "Welcome to Terraform Learning"
}

output "sample_op" {
    value = var.sample
}

output "sample_out put" {
    value = " Value of a sample variable is ${var.sample}"
}