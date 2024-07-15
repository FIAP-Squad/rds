provider "aws" {
    region = "${var.region}"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    token = "${var.session_token}"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.48.0"
    }
  }

  backend "s3" {
    bucket = "fiap-fase4-equipe15"
    key    = "rds"
    region = "us-east-1"
  }
}