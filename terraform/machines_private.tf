resource "aws_network_interface" "mac_a_1" { 
  subnet_id = "${aws_subnet.private_a.id}"
  private_ips = ["10.0.5.10"] 
}

resource "aws_instance" "backend_a" {
  ami           = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
  network_interface {
    network_interface_id   = "${aws_network_interface.mac_a_1.id}"
    device_index           = 0
    delete_on_termination  = false
  } 
  key_name = "deployer-key"
  tags = { 
    Name = "private"
  }
}

resource "aws_network_interface" "mac_b_1" { 
  subnet_id = "${aws_subnet.private_b.id}"
  private_ips = ["10.0.6.10"] 
}

resource "aws_instance" "backend_b" {
  ami           = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
  network_interface {
    network_interface_id   = "${aws_network_interface.mac_b_1.id}"
    device_index           = 0
    delete_on_termination  = false
  } 
  key_name = "deployer-key"
  tags = { 
    Name = "private"
  }
}



resource "aws_network_interface" "mac_c_1" { 
  subnet_id = "${aws_subnet.private_c.id}"
  private_ips = ["10.0.7.10"] 
}

resource "aws_instance" "backend_c" {
  ami           = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
  network_interface {
    network_interface_id   = "${aws_network_interface.mac_c_1.id}"
    device_index           = 0
    delete_on_termination  = false
  } 
  key_name = "deployer-key"
  tags = { 
    Name = "private"
  }
}
