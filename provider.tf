terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws"{
  Region = "ap-south-1"
  access_key = "AKIAVIIWYAHMXQK5WDPY"
  secret_key = "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"
}
