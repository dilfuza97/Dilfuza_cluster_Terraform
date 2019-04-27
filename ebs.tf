resource "aws_ebs_volume" "a-etcd-events-dilfuzacluster-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "a.etcd-events.dilfuzacluster.com"
    "k8s.io/etcd/events"                       = "a/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-dilfuzacluster-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "a.etcd-main.dilfuzacluster.com"
    "k8s.io/etcd/main"                         = "a/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-dilfuzacluster-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "b.etcd-events.dilfuzacluster.com"
    "k8s.io/etcd/events"                       = "b/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-farrukhcluster-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "b.etcd-main.dilfuzacluster.com"
    "k8s.io/etcd/main"                         = "b/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-dilfuzacluster-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "c.etcd-events.dilfuzacluster.com"
    "k8s.io/etcd/events"                       = "c/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/fdilfuzacluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-dilfuzacluster-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "dilfuzacluster.com"
    Name                                       = "c.etcd-main.dilfuzacluster.com"
    "k8s.io/etcd/main"                         = "c/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/dilfuzacluster.com" = "owned"
  }
}
