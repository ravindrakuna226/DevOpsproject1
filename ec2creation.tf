provider "aws" {
  region     = "ap-south-1"
}
resource "aws_instance" "project1" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"
  key_name = "test5.pem"
   subnet_id = "subnet-0c572dd5617259633"
   security_groups = ["sg-0d9cb8ac647675bb9"]
  tags = {
    Env = "testing"
    Name = "project1"
  }
}
