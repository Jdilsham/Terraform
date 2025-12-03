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

resource "aws_iam_user" "accounts" {
  for_each = toset(["user1", "user2", "user3"])
  name     = each.key

  tags = {
    time_created = timestamp()
    department   = "IT"
  }
}