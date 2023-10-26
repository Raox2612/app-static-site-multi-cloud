terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.20"
    }
  }
  backend "s3" {
    bucket         = "staticsite-raoxmulticloud-tf-v001"
    key            = "terraform.tfstate"
    dynamodb_table = "staticsite-raoxmulticloud-tf-v001"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloud"
}