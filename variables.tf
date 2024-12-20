variable "AWS_REGION" {
  description = "AWS Region"
  default     = "ap-south-1"
}

variable "AWS_S3_BUCKETS" {
  description = "List of S3 Buckets"
  type = map(object({
    website = map(string)
  }))
}
