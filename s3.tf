resource "aws_s3_bucket" "my-bucket" {
  bucket = "jigyasa-tanwar-terraform-2026"

  tags = {
    Name = "jigyasa-tanwar-terraform-2026"
  }
}