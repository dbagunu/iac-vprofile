variable "s3_bucket_name" {
  description = "S3 bucket name for tfstate backend"
  type = string
  default = "terraform-aws-vprofile"
}

variable "dynamoDB_name" {
  description = "DynamoDB table name for locking"
  type = string
  default = "terraform-state-locks2"
}