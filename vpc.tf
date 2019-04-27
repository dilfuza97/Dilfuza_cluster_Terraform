resource "aws_vpc" "dilfuzacluster-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzahcluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "dilfuzacluster-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "dilfuzahcluster.com"
    "kubernetes.io/cluster/dilfuzahcluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "dilfuzahcluster-com" {
  vpc_id          = "${aws_vpc.dilfuzacluster-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.fdilfuzacluster-com.id}"
}