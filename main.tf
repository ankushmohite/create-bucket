terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-unique-tf-buddddcket-ap-south-1"

  tags = {
    Name        = "Terraform S3 Bucket"
    Environment = "Dev"
  }
}

##
//