terraform {
  backend "s3" {
    bucket = "terraform-tfstate-alia"
    key    = "infrastructure"
    region = "us-east-1"
  }
}