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

resource "aws_db_instance" "rds_instance" {
allocated_storage = 20
identifier = "rds-tapan"
storage_type = "gp2"
engine = "mysql"
engine_version = "8.0.27"
instance_class = "db.t2.micro"
name = "Tapand"
username = "admin"
password = "tapan111"
publicly_accessible    = true
skip_final_snapshot    = true


  tags = {
    Name = "ExampleRDSServerInstance"
  }
}
