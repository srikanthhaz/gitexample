terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
 }
}
provider "aws" {
access_key = "${var.aws_access_key}"
secret_key = "${var.aws_secret_key}"
region     = "${var.region}"
}

resource "aws_instance" "webserver" {
ami           = "ami-0c2aba6c"
instance_type = "t2.micro"
}
