resource "aws_eip" "eu-west-1a-farrukhcluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "eu-west-1a.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-farrukhcluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "eu-west-1b.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-farrukhcluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "eu-west-1c.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

