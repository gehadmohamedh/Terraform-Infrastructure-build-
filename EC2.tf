locals {
  private_key = tls_private_key.rsa.private_key_pem
}
resource "aws_instance" "public-instance" {
  ami                         = var.INSTANCE_AMI
  associate_public_ip_address = true
  instance_type               = var.INSTANCE_TYPE

  key_name               = aws_key_pair.tf-key-pair.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  subnet_id              = module.network_mod.public_sub_id

  provisioner "local-exec" {
    command = "echo ${self.public_ip}"
  }
  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd.x86_64
    systemctl start httpd.service
    systemctl enable httpd.service
    echo “Hello World from $(hostname -f)” > /var/www/html/index.html
EOF
}

#echo "${local.private_key}" > /home/$(hostname -f)/tf-key-pair.pem"
resource "aws_instance" "private-instance" {
  ami             = var.INSTANCE_AMI
  instance_type   = var.INSTANCE_TYPE
  key_name        = aws_key_pair.tf-key-pair.id
  security_groups = [aws_security_group.private_sg.id]
  subnet_id       = module.network_mod.private_sub_id
}
