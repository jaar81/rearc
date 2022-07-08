terraform {
    backend "s3" {
        bucket         = "rearc-terraform-state-buckit"
        key            = "rearc-app.tfstate"
        region         = "us-east-1"
        encrypt        = true
        dynamodb_table = "recipe-app-api-devops-tf-state-lock"
    }
}

provider "aws" {
  region = "us-east-1"
  version = "~> 2.50.0"
}
