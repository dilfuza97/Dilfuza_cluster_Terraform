resource "aws_subnet" "eu-west-1a-farrukhcluster-com" {
  vpc_id            = "${aws_vpc.farrukhcluster-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "eu-west-1a.farrukhcluster.com"
    SubnetType                                 = "Private"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}

resource "aws_subnet" "eu-west-1b-farrukhcluster-com" {
  vpc_id            = "${aws_vpc.farrukhcluster-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "eu-west-1b.farrukhcluster.com"
    SubnetType                                 = "Private"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}

resource "aws_subnet" "eu-west-1c-farrukhcluster-com" {
  vpc_id            = "${aws_vpc.farrukhcluster-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "eu-west-1c.farrukhcluster.com"
    SubnetType                                 = "Private"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-farrukhcluster-com" {
  vpc_id            = "${aws_vpc.farrukhcluster-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "utility-eu-west-1a.farrukhcluster.com"
    SubnetType                                 = "Utility"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-farrukhcluster-com" {
  vpc_id            = "${aws_vpc.farrukhcluster-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "utility-eu-west-1b.farrukhcluster.com"
    SubnetType                                 = "Utility"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-farrukhcluster-com" {
  vpc_id            = "${aws_vpc.farrukhcluster-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "utility-eu-west-1c.farrukhcluster.com"
    SubnetType                                 = "Utility"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
}