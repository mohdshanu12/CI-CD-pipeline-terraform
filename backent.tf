terraform {
  backend "s3" {
    bucket = "synthetic-monitor-bucket"
    key    = "tfstatefile"
    region = "us-west-2"
  }
}