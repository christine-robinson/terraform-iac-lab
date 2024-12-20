AWS_S3_BUCKETS = {
  "tf-iac-dev-bucket-1" = {
    cors_rule = []
    website = {
      index_document = "index.html"
    }
  },
  "tf-iac-dev-bucket-2" = {
    cors_rule = [
      {
        allowed_headers = ["*"]
        allowed_methods = ["GET", "POST", "PUT"]
        allowed_origins = ["*"]
        expose_headers  = ["ETag"]
        max_age_seconds = 3000
      }
    ]
    website = {}
  }
}
