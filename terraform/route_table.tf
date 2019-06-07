resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.main.id}"
  tags = {
    Name = "public"
  }
  route {
   cidr_block = "0.0.0.0/0"
   gateway_id = "${aws_internet_gateway.gw.id}"
  }
}


resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.main.id}"

  route {
   cidr_block = "0.0.0.0/0"
   gateway_id = "${aws_nat_gateway.nat_gw.id}"
  }
  tags = {
    Name = "private"
  }
}