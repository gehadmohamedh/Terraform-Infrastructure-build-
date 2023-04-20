resource "aws_elasticache_cluster" "els" {
  cluster_id           = "cluster-els"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
  subnet_group_name =  aws_elasticache_subnet_group.subnet_els.id
  security_group_ids= [aws_security_group.els_sg.id]
}