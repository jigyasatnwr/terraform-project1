resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my-env}-jigyasa-tanwar-terraform-2026"

  tags = {
    Name = "${var.my-env}-jigyasa-tanwar-terraform-2026"
    enviroment = var.my-env
  }
}