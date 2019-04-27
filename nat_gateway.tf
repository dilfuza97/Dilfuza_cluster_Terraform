resource "aws_nat_gateway" "eu-west-1a-farrukhcluster-com" {
  allocation_id = "${aws_eip.eu-west-1a-farrukhcluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-farrukhcluster-com.id}"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "eu-west-1a.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-farrukhcluster-com" {
  allocation_id = "${aws_eip.eu-west-1b-farrukhcluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-farrukhcluster-com.id}"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "eu-west-1b.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-farrukhcluster-com" {
  allocation_id = "${aws_eip.eu-west-1c-farrukhcluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-farrukhcluster-com.id}"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "eu-west-1c.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}