resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.public_a.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "b" {
  subnet_id      = "${aws_subnet.public_b.id}"
  route_table_id = "${aws_route_table.public.id}"
}


resource "aws_route_table_association" "c" {
  subnet_id      = "${aws_subnet.public_c.id}"
  route_table_id = "${aws_route_table.public.id}"
}


resource "aws_route_table_association" "d" {
  subnet_id      = "${aws_subnet.private_a.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "e" {
  subnet_id      = "${aws_subnet.private_b.id}"
  route_table_id = "${aws_route_table.private.id}"
}


resource "aws_route_table_association" "f" {
  subnet_id      = "${aws_subnet.private_c.id}"
  route_table_id = "${aws_route_table.private.id}"
}
