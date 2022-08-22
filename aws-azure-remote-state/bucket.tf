resource "aws_s3_bucket" "first_bucket" {
  bucket = "pvcapuano-remote-state"

  versioning {
    enabled = true
  }

}