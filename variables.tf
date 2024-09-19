variable "REGION" {
  type        = string
  default     = "ap-south-1"
  description = "AWS Region"
}

variable "S3_BUCKETS" {
  type        = set(string)
  default     = ["zen-devops-bucket-1", "zen-devops-bucket-2"]
  description = "S3 Buckets"
}