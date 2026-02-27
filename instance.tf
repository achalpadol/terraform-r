provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "fct" {
    ami = "ami-051a31ab2f4d498f5"
    instance_type = "t3.micro"
    key_name = "achal-mumbai-key"
  
}
