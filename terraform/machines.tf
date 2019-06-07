####Maquina 1
resource "aws_network_interface" "mac_1" { 
  subnet_id = "${aws_subnet.public_a.id}"
  private_ips = ["10.0.1.10"] 
}

resource "aws_eip" "public_web_a" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc_1" {
  network_interface_id   = "${aws_network_interface.mac_1.id}"
  allocation_id          = "${aws_eip.public_web_a.id}"
}

resource "aws_instance" "web_a" {
  ami           = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
  network_interface {
    network_interface_id   = "${aws_network_interface.mac_1.id}"
    device_index           = 0
    delete_on_termination  = false
  } 
  key_name = "deployer-key"
  tags = { 
    Name = "public-1"
  }
}

####Maquina 2
resource "aws_network_interface" "mac_2" { 
  subnet_id = "${aws_subnet.public_b.id}"
  private_ips = ["10.0.2.10"] 
}

resource "aws_eip" "public_web_b" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc_2" {
  network_interface_id   = "${aws_network_interface.mac_2.id}"
  allocation_id          = "${aws_eip.public_web_b.id}"
}

resource "aws_instance" "web_b" {
  ami           = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
  network_interface {
    network_interface_id   = "${aws_network_interface.mac_2.id}"
    device_index           = 0
    delete_on_termination  = false
  } 
  key_name = "deployer-key"
  tags = { 
    Name = "public-1"
  }
}


####Maquina 3
resource "aws_network_interface" "mac_3" { 
  subnet_id = "${aws_subnet.public_c.id}"
  private_ips = ["10.0.3.10"] 
}

resource "aws_eip" "public_web_c" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc_3" {
  network_interface_id   = "${aws_network_interface.mac_3.id}"
  allocation_id          = "${aws_eip.public_web_c.id}"
}

resource "aws_instance" "web_c" {
  ami           = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
  network_interface {
    network_interface_id   = "${aws_network_interface.mac_3.id}"
    device_index           = 0
    delete_on_termination  = false
  } 
  key_name = "deployer-key"
  tags = { 
    Name = "public-1"
  }
}
