provider "aws" {

  region = var.region

  access_key = "AKIAVIIWYAHMXQK5WDPY"

  secret_key = "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"

}

resource "aws_instance" "myec2" {

     instance_type = var.instance_type

     ami = "ami-008b85aa3ff5c1b02"

     tags = {

     name = "my_ec2"

     }
}
