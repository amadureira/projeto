provider "aws" {
 access_key = "AKIAWPKU3V636AJG2ZXB"
 secret_key = "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"
  region     = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "vpc"
  }

}
