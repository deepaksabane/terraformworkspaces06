provider "aws" {
    region = "ap-south-2"
  
}

resource "aws_instance" "deepak" {
    ami = var.ami
    instance_type = var.instance_type
  
}
