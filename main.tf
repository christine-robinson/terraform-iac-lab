terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.67.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-iac-lab"
    key            = "dev.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-iac-lab"
    encrypt        = false
  }
}

provider "aws" {
  region = var.REGION
}