resource "aws_s3_bucket" "my-bucket" {
  bucket = "jigyasa"
  tags = {
    Name = "jigyasa"
  }
}