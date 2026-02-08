provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    Name       = var.bucket_name
    ManagedBy = "opentofu"
    Project   = "brainy"
  }
}
