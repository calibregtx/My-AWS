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



resource "aws_default_vpc" "RA_VPC" {
  tags = {
    Name = "RA_VPC"

#  }
#}

# EC2
# resource "aws_instance" "Randy_web" {
#   ami           = "ami-0bba69335379e17f8"
#   instance_type = "t2.micro"
# }
# LB
# resource "aws_lb" "RA_GWLB" {
#   name = "RAGWLB"
#   load_balancer_type = "gateway"
  
# }

