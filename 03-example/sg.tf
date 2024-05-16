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