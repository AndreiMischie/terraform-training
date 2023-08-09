resource "aws_s3_bucket" "tt-bucket" {
  bucket = var.s3_bucket_name
}

resource "aws_s3_object" "tt-bucket-files" {
  bucket = aws_s3_bucket.tt-bucket.id
  key    = each.key
  source = "${path.module}/${each.value}"

  for_each = var.file_assets
}

