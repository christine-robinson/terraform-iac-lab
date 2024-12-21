module "aws-s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.2.2"

  for_each = var.AWS_S3_BUCKETS

  bucket        = each.key
  create_bucket = each.value.create_bucket

  acl = each.value.acl

  control_object_ownership = each.value.control_object_ownership
  object_ownership         = each.value.object_ownership

  cors_rule = each.value.cors_rule

  versioning = each.value.versioning

  website = each.value.website
}
