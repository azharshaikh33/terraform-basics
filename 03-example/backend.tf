# Configuring the backend for TFState

terraform {
  backend "s3" {
    bucket = "azhar-roboshop-project-tfstate"
    key    = "dev/ec2"
    region = "us-east-1"
  }
}
