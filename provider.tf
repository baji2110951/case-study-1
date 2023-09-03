terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = AKIAVIIWYAHMXQK5WDPY

secret_key = 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
}


#ec2 Instance

resource "aws_instance" "myec2" {

  instance_type = "t2.micro"

  ami = "ami-008b85aa3ff5c1b02"

  tags = {

    name = "my_ec2"

  }
}
