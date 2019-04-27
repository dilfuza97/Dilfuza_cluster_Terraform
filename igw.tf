resource "aws_internet_gateway" "farrukhcluster-com" {
  vpc_id = "${aws_vpc.farrukhcluster-com.id}"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}