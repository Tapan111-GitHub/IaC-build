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
resource "aws_s3_bucket" "temps3" {
    bucket = "tapanbucket007" 
    acl = "private"   
}
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

