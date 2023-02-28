resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc"
    Purpose = "Jenkins Demo"
  }
}

resource "aws_instance" "fromAMI" {
  ami           = "ami-0ea6ca7ed56dcc0bc"
  instance_type = "t2.micro"
  key_name = "jenkings"
  tags = {
    Name = "Infrabuild"
  }
}
