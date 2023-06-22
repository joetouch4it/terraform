# https://github.com/cloudposse/terraform-aws-tfstate-backend
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.4.0"
    }
  }
}
provider "aws" {
  region  = "eu-central-1"
  profile = "touchacademy"
}

#https://registry.terraform.io/modules/cloudposse/tfstate-backend/aws/latest/examples/complete?tab=inputs
module "s3_backend" {
  source = "cloudposse/tfstate-backend/aws"
  name = "jozef-tf-state"
}

# terraform {
#   backend "s3" {
#     region         = "eu-central-1"
#     bucket         = "jozef-tf-state"
#     key            = "backend-terraform.tfstate"
#     dynamodb_table = "jozef-tf-state-lock"
#     profile        = "touchacademy"
#     encrypt        = true
#   }  
# }
