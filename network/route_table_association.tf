resource "aws_route_table_association" "public_rts" {
  subnet_id      = aws_subnet.public_sub.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "private_rts" {
  subnet_id      = aws_subnet.private_sub.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private2_rts" {
  subnet_id      = aws_subnet.private2_sub.id
  route_table_id = aws_route_table.private2_rt.id
}