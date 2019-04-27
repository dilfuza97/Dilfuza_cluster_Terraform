resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.farrukhcluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.farrukhcluster-com.id}"
}

resource "aws_route" "private-eu-west-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1a-farrukhcluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1a-farrukhcluster-com.id}"
}

resource "aws_route" "private-eu-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1b-farrukhcluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1b-farrukhcluster-com.id}"
}

resource "aws_route" "private-eu-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1c-farrukhcluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1c-farrukhcluster-com.id}"
}



resource "aws_route_table" "farrukhcluster-com" {
  vpc_id = "${aws_vpc.farrukhcluster-com.id}"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
    "kubernetes.io/kops/role"                  = "public"
  }
}

resource "aws_route_table" "private-eu-west-1a-farrukhcluster-com" {
  vpc_id = "${aws_vpc.farrukhcluster-com.id}"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "private-eu-west-1a.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
    "kubernetes.io/kops/role"                  = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-farrukhcluster-com" {
  vpc_id = "${aws_vpc.farrukhcluster-com.id}"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "private-eu-west-1b.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
    "kubernetes.io/kops/role"                  = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-farrukhcluster-com" {
  vpc_id = "${aws_vpc.farrukhcluster-com.id}"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "private-eu-west-1c.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
    "kubernetes.io/kops/role"                  = "private-eu-west-1c"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-farrukhcluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-farrukhcluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-farrukhcluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-farrukhcluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-farrukhcluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-farrukhcluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-farrukhcluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-farrukhcluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-farrukhcluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-farrukhcluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-farrukhcluster-com.id}"
  route_table_id = "${aws_route_table.farrukhcluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-farrukhcluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-farrukhcluster-com.id}"
  route_table_id = "${aws_route_table.farrukhcluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-farrukhcluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-farrukhcluster-com.id}"
  route_table_id = "${aws_route_table.farrukhcluster-com.id}"
}
