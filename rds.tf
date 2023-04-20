data "aws_secretsmanager_secret_version" "rds_credentials" {
  secret_id = aws_secretsmanager_secret.rds_credentials.id
}

resource "aws_db_instance" "gehad_db" {
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t3.micro"
  name                   = "mydb"
  username               = jsondecode(data.aws_secretsmanager_secret_version.rds_credentials.secret_string)["username"]
  password               = jsondecode(data.aws_secretsmanager_secret_version.rds_credentials.secret_string)["password"]
  parameter_group_name   = "default.mysql5.7"
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet.id
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  skip_final_snapshot    = true
}
