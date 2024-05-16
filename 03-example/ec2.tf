# Providers details
provider "aws" {
  region = "us-east-1"
}


# create ec2 instance
resource "aws_instance" "web" {
    ami = "ami-072983368f2a6eab5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_sg.id]

    tags = {
      name = "Terraform-Instance-Server"
    }
}

output "private_dns_of_server" {
    value = "aws_instance.web.private_dns"
  
}

# Create a security group
resource "aws_security_group" "allow_ssh_sg" {
  name        = "b53_allow_ssh_sg"
  description = "Allow SSH traffic"

  # Inbound rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "b53_allow_ssh_sg"
  }
}