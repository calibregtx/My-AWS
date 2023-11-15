terraform {
  cloud {
    organization = "calibre90"

    workspaces {
      name = "Randy_Local"
    }
  }
}

provider "aws" {
    region = "southeast-3"
 
}



resource "aws_vpc" "Randy_VPC" {
  # checkov:skip=CKV2_AWS_11: ADD REASON 
  tags = {
    Name = "Randy_VPC"
   }
  }


resource "aws_instance" "Randy_web" {
  ami           = "ami-0bba69335379e17f8"
  instance_type = "t2.micro"
  monitoring = true
  ebs_optimized = true
}


#

