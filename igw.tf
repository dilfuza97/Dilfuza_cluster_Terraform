resource "aws_internet_gateway" "dilfuzacluster-com" {
  vpc_id = "${aws_vpc.dilfuzacluster-com.id}"

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
  }
}