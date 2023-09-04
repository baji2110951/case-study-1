terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# AWS Provider
provider "aws" {

  region = var.region

}


#ec2 Instance

resource "aws_instance" "myec2" {

  instance_type = var.instance_type

  ami = "ami-008b85aa3ff5c1b02"

  tags = {

    name = "my_ec2"

  }
}
