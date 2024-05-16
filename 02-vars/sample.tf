variable "sample" {
    default = "Welcome to Terraform Learning"
}

output "sample_op" {
    value = var.sample
}

output "sample_output" {
    value = "Value of a sample variable is ${var.sample}"
}

variable "integer" {
    default = 1000
}

output "number" {
    value = "var.integer"
}

variable "sample_list" {
    default = [
        "terraform",
        "Cloud Formation",
        "Pulumi",
        "Ansible",
        120,
        true
    ]
}

output "sample_list_op" {
    value = "Welcome to ${var.sample_list[0]} Training and duration of the training is ${var.sample_list[4]} hours"
}

variable "sample_map" {
    default = {
        mode = "online",
        training = "DevOps",
        timing = "0730_AM_IST"
    }
}

output "sample_map_op" {
    value = "Welcome to ${var.sample_map["mode"]} - ${var.sample_map["training"]} and the batch timings are ${var.sample_map["timing"]}"
}

variable "city" {}

output "city_name_op" {
    value = "var.city"
}

output "city_name_op_1" {
    value = "The name of the city is ${var.city}"
}