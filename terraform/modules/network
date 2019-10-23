#------------------
#      vpc
#------------------

resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags {
    Name = "${var.namespace}-vpc"
  }
}

#-------------------------
#    internete gateway
#-------------------------
resource "aws_internet_gateway" "main" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name = "${var.namespace}-internet_gateway"
  }
}

#-----------------------
#    router table
#-----------------------
resource "aws_route_table" "main" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.main.id}"
  }

  tags {
    Name = "${var.namespace}-route_table"
  }
}

#--------------------
#     subnets 
#--------------------
#set up two subnets will be a great way in the future: one for public and one for private
resource "aws_subnet" "main" {
  count             = 1
  cidr_block        = "10.0.${count.index+1}.0/24"
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "${element(data.aws_availability_zones.available.names, count.index)}"

  tags {
    Name = "${var.namespace}-subnet-${element(data.aws_availability_zones.available.names, count.index)}"
  }

  map_public_ip_on_launch = true
}

#--------------------
#   security group
#--------------------
resource "aws_security_group" "main" {
  name        = "${var.namespace}-sg"
  description = "${var.namespace} security group"
  vpc_id      = "${aws_vpc.main.id}"
}
