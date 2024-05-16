provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
    ami = "ami-072983368f2a6eab5"
    instance_type = "t3.micro"

    tags = {
      name = "Terraform-Instance-Server"
    }
}

output "private_dns_of_server" {
    value = "aws_instance.web.private_dns"
  
}

resource "aws_security_group" "allow_SSH" {
  name        = "allow_SSH"
  description = "Allow SSH inbound traffic and all outbound traffic"

  tags = {
    Name = "allow_SSH"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_SSH_ipv4" {
  security_group_id = aws_security_group.allow_SSH.id
  cidr_ipv4         = ["0.0.0.0/0"]
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}