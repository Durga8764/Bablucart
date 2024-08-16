terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

  }
  backend "s3" {
    bucket  = "terraformstatefile123"
    key     = "Tf state"
    region  = "us-east-1"
    encrypt = true

  }
}

resource "aws_s3_bucket" "example" {
  bucket = "durga-8764-test"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"

  tags = {
    Name = "Durga87645"
  }
} 