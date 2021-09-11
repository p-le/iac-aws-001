terraform {
  backend "s3" {
    bucket = "ap-northeast-1-terraform-state"
    region = "ap-northeast-1"
    key    = "app-001"
  }
}
