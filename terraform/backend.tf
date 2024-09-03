terraform {
  backend "s3" {
    bucket = "tersa-app"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}
