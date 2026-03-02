provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "first-instance" {
ami = "ami-051a31ab2f4d498f5"  
instance_type = "t3.micro"
key_name = "achal-mumbai-key"
vpc_security_group_ids = [aws_security_group.my-sg.vpc_id]
tags = {
  Name = "ec2-instance"
}
}

resource "aws_security_group" "my-sg" {
    name = "fct-sg"
    ingress {
        description = "allow port"
        to_port = 22
        from_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "allow port"
        to_port = 0
        from_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
  
}
