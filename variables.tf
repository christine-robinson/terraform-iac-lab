variable "PROJECT_NAME" {
  type        = string
  default     = "terraform-iac-lab"
  description = "Project Name"
}

variable "ENVIRONMENT" {
  type        = string
  default     = "dev"
  description = "Environment"
}

variable "AWS_DEFAULT_REGION" {
  type        = string
  default     = "ap-south-1"
  description = "AWS Default Region"
}
