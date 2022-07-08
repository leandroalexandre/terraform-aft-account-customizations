data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "account-02_bucket" {
  bucket = "aft-account-02-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
