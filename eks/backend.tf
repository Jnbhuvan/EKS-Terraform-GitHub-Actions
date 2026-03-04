terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
 backend "s3" {
  bucket = "bhuvan-tf-state-bucket-123"
  key    = "eks/terraform.tfstate"
  region = "us-east-1"
}
}

provider "aws" {
  region = var.aws-region
}
