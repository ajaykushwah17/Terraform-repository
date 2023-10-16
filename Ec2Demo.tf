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
        access_key = "AKIA32BP4XBTDL3TBNNN"
        secret_key = "hgUP+9CAR7A3ZPHIHUVHDfsgf2tJe7QF2s/88wC1"
    }
    resource "aws_instance" "example" {
  ami           = "ami-067c21fb1979f0b27" 
  instance_type = "t2.micro"
  tags = {
    "Name" = "Myec2Instance"
  }
    }
