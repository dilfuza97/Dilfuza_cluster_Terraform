resource "aws_eip" "eu-west-1a-dilfuzacluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "eu-west-1a.dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzahcluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-dilfuzacluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "eu-west-1b.dilfuzacluster.com"
    "kubernetes.io/cluster/fdilfuzacluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-dilfuzacluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "eu-west-1c.dilfuzacluster.com"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
  }
}

