terraform {
  required_version = "1.2.8"
  backend "s3" {
    bucket         = "terraform-tfstate-828200174334-us-east-1"
    encrypt        = "true"
    key            = "ness-munichre-infra/s3/us-east-1/munichredemo-bucket"
    dynamodb_table = "terraform_lock_us-east-1"
    region         = "us-east-1"
  }
 required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.1.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}