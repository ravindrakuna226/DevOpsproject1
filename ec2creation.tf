provider "aws" {
  region     = "ap-south-1"
}
resource "aws_instance" "test_server" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"
  key_name = "test5"
  tags = {
    Env = "testing"
    Name = "test_server"
  }
}
