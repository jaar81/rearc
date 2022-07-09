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

