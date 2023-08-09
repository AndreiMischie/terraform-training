output "tt_bucket_arn" {
  value     = aws_s3_bucket.tt-bucket.arn
  sensitive = true
}

output "sample_bucket_arn" {
  value     = data.aws_s3_bucket.sample_bucket.arn
  sensitive = true
}
