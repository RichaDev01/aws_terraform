terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA4MTWNGI74CHJ5DDX"
  secret_key = "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"
}


resource "aws_s3_bucket" "test" {
  bucket = "myfirstbuckettss12"
}

resource "aws_s3_bucket" "demo_bucket" {

    # count = length((var.bucket_list))
    # bucket = var.bucket_list[count.index]

    for_each = toset(var.bucket_list)
    bucket = each.key
  
}