data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "aft-lab-01_bucket" {
  bucket = "aft-lab-01-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
