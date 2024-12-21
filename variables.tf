variable "AWS_REGION" {
  description = "AWS Region"
  default     = "ap-south-1"
}

variable "AWS_S3_BUCKETS" {
  description = "List of S3 Buckets"
  type = map(object({
    create_bucket            = bool
    acl                      = string
    control_object_ownership = bool
    object_ownership         = string
    cors_rule                = any
    versioning               = map(string)
    website                  = map(string)
  }))
}
