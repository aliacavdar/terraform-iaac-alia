terraform {
  backend "s3" {
    bucket = "backend-state-alia"
    key    = "aws/iam/iam_state"
    region = "us-east-1"
  }
}