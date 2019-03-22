provider "aws" {
  region = "us-east-2"
}

terraform {
    backend "s3" {
      bucket = "stephengb-minecraft"
      key = "terraform-state"
      region = "us-east-2"
    }
}