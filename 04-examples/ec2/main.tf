# create ec2 instance
resource "aws_instance" "web" {
    ami = "ami-072983368f2a6eab5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [var.sg]

    tags = {
      name = "Terraform-Instance-Server-Name"
    }
}

variable "sg" {}

output "private_dns" {
  value = "aws_instance.web.private_dns"
}
