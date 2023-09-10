provider "aws" {

  region     = var.region
}

resource "aws_instance" "web" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_pair
  security_groups = ["TF_SG"]
  tags = {
    Name = "IAC_server"
  }
}

resource "aws_key_pair" "aws_key" {
  key_name   = "tfs-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "t-key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "tkey.pem"
}

resource "aws_security_group" "my_SG" {
  name        = "TF_SG"
  description = "security group created using Terraform"
  vpc_id      = "vpc-0c86b0ad22811e3a4"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "SG_using_TF"
  }
}

output "IP_address" {

  value = aws_instance.web.public_ip

}

output "Instance_id" {

  value = aws_instance.web.id

}
