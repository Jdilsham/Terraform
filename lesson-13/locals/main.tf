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

## Build an IAM user account resource here with a for_each meta-argument referecing a locals block.

resource "aws_iam_user" "account_marketing" {
  for_each = local.accounts
  name = each.key

  tags = local.common_tags
}

## Then build a locals block with a toset function listing 4 users.
locals {
  accounts = toset([
    "marketing_user_1",
    "marketing_user_2",
    "marketing_user_3",
    "marketing_user_4",
  ])
}


## Finally, build a locals block with common tags and reference it from the IAM user resource.
locals {
  common_tags = {
    department    = "Marketing"
    time_created  = timestamp()
    project       = "Website Redesign"
  }
}


## More information on Locals: https://developer.hashicorp.com/terraform/language/values/locals


