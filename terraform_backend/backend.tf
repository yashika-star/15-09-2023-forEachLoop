terraform {
  backend "s3" {
    bucket = "test-bucket2233"
    key    = "yashika.tfstate"
    region = "ap-south-1"
    owner = "yashika@cloudeq.com"
  }
}
