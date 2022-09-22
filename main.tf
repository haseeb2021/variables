terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09e2d756e7d78558d"
  instance_type = "t2.micro"
  subnet_id     = "subnet-08a054583e9ff3df2"
  tags = {
    Name = "ExampleAppServerInstance"
    Name = var.instance_name
  }
}


