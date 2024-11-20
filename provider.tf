terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" # aws provider version
    }
  }

  backend "s3" {
    bucket = "cbpdevops-remote-state"
    key = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "cbpdevops-locking"
  }
}


provider "aws" {
  region = "us-east-1"
}