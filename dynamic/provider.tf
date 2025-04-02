terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "mani-swetha"
    key    = "dynamic-demo"
    region = "us-east-1"
    dynamodb_table = "mani-lockfile"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}