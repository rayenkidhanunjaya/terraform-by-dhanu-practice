terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.12.0"
    }
  }
  backend "s3" {
    bucket = "teeraformpractice114"
    key    = "harikey"
    region = "us-east-1"
    dynamodb_table = "terraformpractice"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}