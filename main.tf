terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.1"
    }
  }

  backend "s3" {
    bucket         = "terraform-iac-lab-backend"
    key            = "dev.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-iac-lab-backend-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.AWS_REGION
}
