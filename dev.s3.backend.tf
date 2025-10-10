resource "aws_s3_bucket" "tf-backend" {
  bucket        = "j-llm-tf-state-bucket-dev"
  force_destroy = true

  tags = var.tags
}


# Private by default
resource "aws_s3_bucket_public_access_block" "tf-backend-private" {
  bucket = aws_s3_bucket.tf-backend.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
