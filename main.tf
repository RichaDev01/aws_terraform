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

# LOOPS FOR CREATING INSTANCES
# FOR EACH LOOP
resource "aws_s3_bucket" "demo_bucket" {
    # for_each = toset(var.bucket_list)
    # bucket = each.key

    for_each = var.bucket_map
    bucket = each.key
  
}
# USING COUNT
resource "aws_s3_bucket" "countt11_bucket" {

    count = length((var.bucket_list))
    bucket = var.bucket_list[count.index]

    # count = 2
    # bucket = "inst-${count.index}"
  
}
