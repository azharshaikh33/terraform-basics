# create ec2 instance
resource "aws_instance" "web" {
    ami = "ami-072983368f2a6eab5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_sg.id]

    tags = {
      name = "web"
    }
}

output "private_dns_of_server" {
    value = "aws_instance.web.private_dns"
  
}

