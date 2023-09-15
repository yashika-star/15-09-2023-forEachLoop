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

  subnet_id     = "subnet-0962069167a59d185"
    for_each      = var.map

    ami           = each.value.ami
    instance_type = each.value.ins_type
    tags = {
        Name  = each.value.name
        Owner = "yashika@cloudeq.com"
    }

    volume_tags = {
        Name  = each.value.name
        Owner = "yashika@cloudeq.com"
    }
}

