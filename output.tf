output "bucket_name" {
  description = "The name of the S3 bucket created."
  value       = aws_s3_bucket.dimais.bucket
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket created."
  value       = aws_s3_bucket.dimais.arn
  
}

output "bucket_domain_name" {
  description = "The domain name of the S3 bucket created."
  value       = aws_s3_bucket.dimais.bucket_domain_name
  
}