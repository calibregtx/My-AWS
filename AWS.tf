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



resource "aws_vpc" "RA_VPC" {
  tags = {
    Name = "RA_VPC"
   }
  }


resource "aws_instance" "Randy_web" {
  ami           = "ami-0bba69335379e17f8"
  instance_type = "t2.micro"
  monitoring = true
  ebs_optimized = true
}


resource "aws_lb" "RA_GWLB" {
  name = "RAGWLB"
  load_balancer_type = "gateway"
  
}

