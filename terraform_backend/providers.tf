provider "aws" {
  region = "ap-south-1"
}

provider "aws" {
    alias = "singapore"
  region = "ap-southeast-1"
}
