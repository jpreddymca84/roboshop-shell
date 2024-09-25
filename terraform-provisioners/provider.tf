terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }

  backend "s3" {
    bucket = "jpdaws-remote-state"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "jpdaws-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}