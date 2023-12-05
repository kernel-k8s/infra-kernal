resource "aws_s3_bucket" "transcribeS3" {
  bucket = "kernel-transcribe-bucket"
}

resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.transcribeS3.id
}
