terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.15"
    }
  }

  required_version = ">= 1.13"

  backend "s3" {
    bucket         = "j-llm-tf-state-bucket-dev"
    key            = "bootstrap/terraform.tfstate"
  }
}

provider "aws" {
  region = var.region
}
