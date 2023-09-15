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
  region = "ap-south-1"
}
// Create EC2 instance
resource "aws_instance" "multiple_instances" {
  count         = 3
  ami           = var.ami[count.index]
  instance_type = var.ins_type[count.index]

  subnet_id     = "subnet-0962069167a59d185"
  tags = {
    Name  = var.name[count.index]
    Owner = var.owner[0]
  }  
    volume_tags = {
    Name  = var.name[count.index]
    Owner = var.owner[0]
  }
}
