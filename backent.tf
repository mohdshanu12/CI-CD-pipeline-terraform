terraform {
  backend "s3" {
    bucket = "synthetic-monitor-bucket"
    key    = "../tfstate"
    region = " us-west-2"
  }
}