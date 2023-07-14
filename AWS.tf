terraform {
  cloud {
    organization = "calibre90"

    workspaces {
      name = "Randy_Local"
    }
  }
}

provider "aws" {
    region = "ap-northeast-1"
 
}



resource "aws_vpc" "Randy_VPC" {
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

