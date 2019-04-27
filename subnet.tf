resource "aws_subnet" "eu-west-1a-dilfuzacluster-com" {
  vpc_id            = "${aws_vpc.dilfuzacluster-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "eu-west-1a.dilfuzacluster.com"
    SubnetType                                 = "Private"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}

resource "aws_subnet" "eu-west-1b-dilfuzacluster-com" {
  vpc_id            = "${aws_vpc.dilfuzacluster-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "eu-west-1b.dilfuzacluster.com"
    SubnetType                                 = "Private"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}

resource "aws_subnet" "eu-west-1c-dilfuzacluster-com" {
  vpc_id            = "${aws_vpc.dilfuzacluster-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "eu-west-1c.dilfuzacluster.com"
    SubnetType                                 = "Private"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-dilfuzacluster-com" {
  vpc_id            = "${aws_vpc.dilfuzacluster-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "utility-eu-west-1a.dilfuzacluster.com"
    SubnetType                                 = "Utility"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-dilfuzacluster-com" {
  vpc_id            = "${aws_vpc.dilfuzacluster-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "utility-eu-west-1b.dilfuzacluster.com"
    SubnetType                                 = "Utility"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-dilfuzacluster-com" {
  vpc_id            = "${aws_vpc.dilfuzacluster-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "utility-eu-west-1c.dilfuzacluster.com"
    SubnetType                                 = "Utility"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
}
