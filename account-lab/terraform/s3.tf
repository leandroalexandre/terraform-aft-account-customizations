data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "account-lab_bucket" {
  bucket = "aft-account-lab-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
