module "aws-s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.2.2"

  for_each = var.AWS_S3_BUCKETS

  bucket    = each.key
  cors_rule = each.value.cors_rule
  website   = each.value.website
}
