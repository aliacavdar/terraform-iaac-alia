terraform {
  backend "s3" {
    bucket = "backend-state-alia"
    key    = "aws/ec2/ec2_state"
    region = "us-east-1"
  }
}
