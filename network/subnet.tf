resource "aws_subnet" "public_sub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.PUBLIC_SUB_CIDR
  map_public_ip_on_launch = true
  availability_zone=var.AZ
}

resource "aws_subnet" "private_sub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.PRIVATE_SUB_CIDR
  map_public_ip_on_launch = false
  availability_zone= var.AZ
}

resource "aws_subnet" "private2_sub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.PRIVATE2_SUB_CIDR
  map_public_ip_on_launch = false
  availability_zone= var.AZ2
}
