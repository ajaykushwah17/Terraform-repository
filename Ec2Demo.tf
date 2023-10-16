terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.51.0"  # Use an appropriate version
    }
  }
}

provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "example" {
  ami           = "ami-067c21fb1979f0b27"  # You can make this a variable if needed
  instance_type = "t2.micro"  # You can make this a variable if needed
  tags = {
    "Name" = "Myec2Instance"
  }
}
