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
  region = "us-east-2"
}
# Create a EC2 Instance
resource "aws_instance" "myInstance" {
  ami                    = "ami-00eb69d236edcfaf8"
  instance_type          = "t2.micro"
   tags = {
    Name = "my-ec2-instance"
  }
}