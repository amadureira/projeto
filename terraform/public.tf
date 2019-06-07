
resource "aws_subnet" "public_a" {
  vpc_id     = "${aws_vpc.main.id}"  
  cidr_block = "10.0.1.0/24"
  availability_zone  = "us-east-1a"
  tags = {
    Name = "public_a"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id     = "${aws_vpc.main.id}"  
  cidr_block = "10.0.2.0/24"
  availability_zone  = "us-east-1b"
  tags = {
    Name = "public_b"
  }
}

resource "aws_subnet" "public_c" {
  vpc_id     = "${aws_vpc.main.id}"  
  cidr_block = "10.0.3.0/24"
  availability_zone  = "us-east-1c"
  tags = {
    Name = "public_c"
  }
}


resource "aws_default_security_group" "default" {
  vpc_id = "${aws_vpc.main.id}"

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
