# Providers details
provider "aws" {
  region = "us-east-1"
}

# Configuring the backend for TFState

terraform {
  backend "s3" {
    bucket = "azhar-roboshop-project-tfstate"
    key    = "modules/terraform.tfstate"
    region = "us-east-1"
  }
}
