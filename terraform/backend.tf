terraform {
  backend "s3" {
    bucket = "tresata-demo"
    region = "us-east-1"
    key = "jenkins-server/terraform.tfstate"
  }
}
