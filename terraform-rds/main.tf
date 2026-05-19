provider "aws" {
  region = "ap-south-1"
}

resource "aws_db_instance" "mysql_rds" {

  identifier = "terraform-vaibhav-rds"

  engine         = "mysql"
  engine_version = "8.0"

  instance_class = "db.t3.micro"

  allocated_storage = 20
  storage_type      = "gp2"

  username = "admin"
  password = "Password123!"

  db_name = "mydatabase"

  publicly_accessible = true

  skip_final_snapshot = true

  tags = {
    Name        = "terraform-vaibhav"
    Environment = "Dev"
    Owner       = "Vaibhav"
  }
}
