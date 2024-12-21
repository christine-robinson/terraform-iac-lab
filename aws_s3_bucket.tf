module "aws_s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.2.2"

  for_each = var.AWS_S3_BUCKETS

  create_bucket = each.value.create_bucket
  bucket        = each.key

  block_public_acls       = each.value.block_public_acls
  block_public_policy     = each.value.block_public_policy
  ignore_public_acls      = each.value.ignore_public_acls
  restrict_public_buckets = each.value.restrict_public_buckets

  acl                      = each.value.acl
  control_object_ownership = each.value.control_object_ownership
  object_ownership         = each.value.object_ownership

  versioning = each.value.versioning

  website = each.value.website

  cors_rule = each.value.cors_rule
}
