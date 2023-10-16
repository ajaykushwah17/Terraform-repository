terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.10.0"
        }
        }
    }
    provider "aws" {
        region = "ap-south-1"
        access_key = "AKIA32BP4XBTAATMDJ47"
        secret_key = "ihSZLkLKPm9WG1HQLMklV3frUG1Rsew/BJAQ3P6+"
    }
    resource "aws_instance" "example" {
  ami           = "ami-067c21fb1979f0b27" 
  instance_type = "t2.micro"
  tags = {
    "Name" = "Myec2Instance"
  }
    }
