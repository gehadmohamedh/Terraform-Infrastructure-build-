
resource "aws_db_subnet_group" "rds_subnet" {
  name       = "rds_subnet"
  subnet_ids = [module.network_mod.private_sub_id, module.network_mod.private2_sub_id]
}
resource "aws_db_parameter_group" "default" {
  name   = "rds-pg"
  family = "mysql5.7"

  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}
resource "aws_elasticache_subnet_group" "subnet_els" {
  name       = "my-cache-subnet"
  subnet_ids = [module.network_mod.private_sub_id ,module.network_mod.private2_sub_id  ]
}
