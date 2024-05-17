# create ec2 instance
resource "aws_instance" "web" {
    ami = "ami-0f75a13ad2e340a58"
    instance_type = "t3.micro"
    vpc_security_group_ids = [var.sg]

    tags = {
      name = "Terraform-Instance-Server-Name"
    }

    # Declaring the remote provisioner inside the resource

    provisioner "remote-exec" {
        
        connection {
            type     = "ssh"
            user     = "centos"
            password = "DevOps321"
            host     = self.private_ip
        }

    inline = [
      "ansible-pull -U https://github.com/azharshaikh33/ansible.git robot-pull.yml -e ENV=dev -e COMPONENT=mongodb"
    ]
  }
}

variable "sg" {}

output "private_dns" {
  value = "aws_instance.web.private_dns"
}
