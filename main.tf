provider "aws" {
region = var.aws_region
}
resource "aws_instance" "example" {
ami = "ami-08a0d1e16fc3f61ea"
instance_type = var.instance_type
tags = {
Name = "example-instance"
}
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "misadb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  apply_immediately    = true
}



