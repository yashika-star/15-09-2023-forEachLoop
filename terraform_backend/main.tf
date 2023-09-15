resource "aws_s3_bucket" "example" {
  bucket = "yashika-batch-9"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
 }