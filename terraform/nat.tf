

resource "aws_eip" "public_nat" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = "${aws_eip.public_nat.id}"
  subnet_id     = "${aws_subnet.public_b.id}"
}

