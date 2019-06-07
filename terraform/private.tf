
resource "aws_subnet" "private_a" {
  vpc_id     = "${aws_vpc.main.id}"  
  cidr_block = "10.0.5.0/24"
  availability_zone  = "us-east-1a"
  tags = {
    Name = "private_a"
  }
}


resource "aws_subnet" "private_b" {
  vpc_id     = "${aws_vpc.main.id}"  
  cidr_block = "10.0.6.0/24"
  availability_zone  = "us-east-1b"
  tags = {
    Name = "private_b"
  }
}

resource "aws_subnet" "private_c" {
  vpc_id     = "${aws_vpc.main.id}"  
  cidr_block = "10.0.7.0/24"
  availability_zone  = "us-east-1c"
  tags = {
    Name = "private_c"
  }
}
