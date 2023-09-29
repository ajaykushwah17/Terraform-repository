
provider "aws" {
  region = "ap-south-1"
}

# Define the EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-067c21fb1979f0b27" 
  instance_type = "t2.micro"
  tags = {
    "Name" = "Myec2Instance"
}

}
