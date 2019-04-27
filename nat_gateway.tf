resource "aws_nat_gateway" "eu-west-1a-dilfuzacluster-com" {
  allocation_id = "${aws_eip.eu-west-1a-dilfuzacluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-dilfuzacluster-com.id}"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "eu-west-1a.dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-dilfuzacluster-com" {
  allocation_id = "${aws_eip.eu-west-1b-dilfuzacluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-dilfuzacluster-com.id}"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "eu-west-1b.dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-dilfuzacluster-com" {
  allocation_id = "${aws_eip.eu-west-1c-dilfuzacluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-dilfuzacluster-com.id}"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "eu-west-1c.dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
  }
}
