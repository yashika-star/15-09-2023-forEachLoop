terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
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

  for_each = var.set
  ami = "ami-02bb7d8191b50f4bb"
  subnet_id ="subnet-0962069167a59d185"
  instance_type = "t2.micro"

  tags = {
    Name = each.value
    Owner = "yashika@cloudeq.com"
  }
  volume_tags = {
     Name = each.value
    Owner = "yashika@cloudeq.com"
  }

}