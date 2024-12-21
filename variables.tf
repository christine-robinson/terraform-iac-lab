variable "AWS_REGION" {
  description = "AWS Region"
  default     = "ap-south-1"
}

variable "AWS_S3_BUCKETS" {
  description = "List of S3 Buckets"
  type = map(object({
    create_bucket = bool

    block_public_acls       = bool
    block_public_policy     = bool
    ignore_public_acls      = bool
    restrict_public_buckets = bool

    acl                      = string
    control_object_ownership = bool
    object_ownership         = string

    versioning = map(string)
    website    = map(string)
    cors_rule  = any
  }))
}
