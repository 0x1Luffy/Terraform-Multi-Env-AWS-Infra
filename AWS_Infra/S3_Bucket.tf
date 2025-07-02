resource "aws_s3_bucket" "Bucket_1" {

    bucket = "${var.env_name}-bucket"
    # so this will become suppose "Prod envrionment bucket"
    # likewise suppose "Staging envrionment bucket"  
    tags = {
      Name = "${var.env_name}-Terra Bucket"
      envrionment = var.env_name
    }
  
}