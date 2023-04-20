//security.tf
resource "aws_security_group" "private_sg" {
name = "private_sg"
vpc_id = module.network_mod.vpc_id
ingress {
    cidr_blocks = [
       "10.0.0.0/16"
    ]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }

  ingress {
    cidr_blocks = [
       "10.0.0.0/16"
    ]
    from_port = 3000
    to_port   = 3000
    protocol = "tcp"
  }

  egress {
   from_port = 0
   to_port = 0
   protocol = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
}
resource "aws_security_group" "public_sg" {
name = "public_sg"
vpc_id = module.network_mod.vpc_id
ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 80
    to_port = 80
    protocol = "tcp"
  }

  egress {
   from_port = 0
   to_port = 0
   protocol = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
}
resource "aws_security_group" "rds_sg" {
name = "rds_sg"
vpc_id = module.network_mod.vpc_id
ingress {
    cidr_blocks = [
       "10.0.0.0/16"
    ]
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
  }

  ingress {
    cidr_blocks = [
       "10.0.0.0/16"
    ]
    from_port = 22
    to_port   = 22
    protocol = "tcp"
  }

  egress {
   from_port = 0
   to_port = 0
   protocol = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
}

resource "aws_security_group" "els_sg" {
name = "els_sg"
vpc_id = module.network_mod.vpc_id
ingress {
    cidr_blocks = [
       "10.0.0.0/16"
    ]
    from_port = 6379
    to_port = 6379
    protocol = "tcp"
  }

  ingress {
    cidr_blocks = [
       "10.0.0.0/16"
    ]
    from_port = 22
    to_port   = 22
    protocol = "tcp"
  }

  egress {
   from_port = 0
   to_port = 0
   protocol = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
}