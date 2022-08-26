terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  /* backend "s3" {
    bucket = "exemplo-terraform-cli"
    key    = "aws-vm/terraform.tfstate"
    region = "eu-central-1"
  } */
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "pvcapuano"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "exemplo-terraform-cli"
    key    = "aws-vpc/terraform.tfstate"
    region = "eu-central-1"
  }
}
