resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.dilfuzacluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.dilfuzacluster-com.id}"
}

resource "aws_route" "private-eu-west-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1a-dilfuzacluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1a-dilfuzacluster-com.id}"
}

resource "aws_route" "private-eu-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1b-dilfuzacluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1b-dilfuzacluster-com.id}"
}

resource "aws_route" "private-eu-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1c-dilfuzacluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1c-dilfuzacluster-com.id}"
}



resource "aws_route_table" "dilfuzacluster-com" {
  vpc_id = "${aws_vpc.dilfuzacluster-com.id}"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
    "kubernetes.io/kops/role"                  = "public"
  }
}

resource "aws_route_table" "private-eu-west-1a-dilfuzacluster-com" {
  vpc_id = "${aws_vpc.dilfuzacluster-com.id}"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "private-eu-west-1a.dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
    "kubernetes.io/kops/role"                  = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-dilfuzacluster-com" {
  vpc_id = "${aws_vpc.dilfuzacluster-com.id}"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "private-eu-west-1b.dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
    "kubernetes.io/kops/role"                  = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-dilfuzacluster-com" {
  vpc_id = "${aws_vpc.dilfuzacluster-com.id}"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "private-eu-west-1c.dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
    "kubernetes.io/kops/role"                  = "private-eu-west-1c"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-dilfuzacluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-dilfuzacluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-dilfuzacluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-dilfuzacluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-dilfuzacluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-dilfuzacluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-dilfuzacluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-dilfuzacluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-dilfuzacluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-dilfuzacluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-dilfuzacluster-com.id}"
  route_table_id = "${aws_route_table.dilfuzacluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-dilfuzacluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-dilfuzacluster-com.id}"
  route_table_id = "${aws_route_table.dilfuzacluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-dilfuzacluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-dilfuzacluster-com.id}"
  route_table_id = "${aws_route_table.dilfuzacluster-com.id}"
}
