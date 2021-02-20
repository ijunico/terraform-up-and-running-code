terraform {
  required_version = ">= 0.12, < 0.15"
}

provider "aws" {
  region = "us-east-2"

  # Allow any 2.x version of the AWS provider
  # this (version) constraints should be moved to required_providers block
  # version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

