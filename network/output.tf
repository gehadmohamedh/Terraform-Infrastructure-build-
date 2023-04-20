output "vpc_id"{
  value = aws_vpc.main.id
}
output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}
output "public_sub_id" {
  value = aws_subnet.public_sub.id
}
output "private_sub_id" {
  value = aws_subnet.private_sub.id
}
output "private2_sub_id" {
  value = aws_subnet.private2_sub.id
}