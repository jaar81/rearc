terraform {
  backend "s3" {
    bucket         = "rearc-terraform-state-buckit"
    key            = "rearc-app.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "rearc-terraform-state-dynamo-db"
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 2.50.0"
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
}

locals {
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManagedBy   = "Terraform"
  }
}

data "aws_region" "current" {}