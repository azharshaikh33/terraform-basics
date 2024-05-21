# terraform-basics

This repo contains all the basics neende to start learning and imple

terraform commands:

git pull ; terrafile -f env-dev/Terrafile

terraform init -backend-config=env-dev/dev-backend.tfvars
terraform plan -var-file=env-dev/dev.tfvars
terraform apply -var-file=env-dev/dev.tfvars
terraform destroy -var-file=env-dev/dev.tfvars
