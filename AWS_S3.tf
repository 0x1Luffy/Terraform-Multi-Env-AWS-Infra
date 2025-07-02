resource "aws_s3_bucket" "Bucket_1" {

    bucket = "Multi-Infra Terra Bucket"
    tags = {
      Name = "Multi-Infra Terra Bucket"
    }
  
}