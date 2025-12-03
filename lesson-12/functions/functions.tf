terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.01"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "function_user" {
  name = "function_user"
  tags = {
    department = "OPS"
    time_created = timestamp()
  }
}