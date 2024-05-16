provider "aws" {
  region    = "us-east-1"
}

resource "aws_instance" "web" {
    ami             = "ami-072983368f2a6eab5"
    instance_type   = "t3.micro"

    tags = {
      name = "Terraform-Instance-Server"
    }
}

output "private_dns_of_server" {
    value = "aws_instance.web.private_dns"
  
}