terraform {
  backend "s3" {
    bucket = "backend-state-alia"
    key    = "infrastructure"
    region = "us-east-1"
  }
}
