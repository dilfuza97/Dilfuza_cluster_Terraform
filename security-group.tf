resource "aws_security_group" "api-elb-farrukhcluster-com" {
  name        = "api-elb.farrukhcluster.com"
  vpc_id      = "${aws_vpc.farrukhcluster-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "api-elb.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-farrukhcluster-com" {
  name        = "bastion-elb.farrukhcluster.com"
  vpc_id      = "${aws_vpc.farrukhcluster-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "bastion-elb.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

resource "aws_security_group" "bastion-farrukhcluster-com" {
  name        = "bastion.farrukhcluster.com"
  vpc_id      = "${aws_vpc.farrukhcluster-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "bastion.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

resource "aws_security_group" "masters-farrukhcluster-com" {
  name        = "masters.farrukhcluster.com"
  vpc_id      = "${aws_vpc.farrukhcluster-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "masters.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

resource "aws_security_group" "nodes-farrukhcluster-com" {
  name        = "nodes.farrukhcluster.com"
  vpc_id      = "${aws_vpc.farrukhcluster-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                          = "farrukhcluster.com"
    Name                                       = "nodes.farrukhcluster.com"
    "kubernetes.io/cluster/farrukhcluster.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.masters-farrukhcluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.masters-farrukhcluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-farrukhcluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-farrukhcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-farrukhcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-farrukhcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-farrukhcluster-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-farrukhcluster-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-farrukhcluster-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-farrukhcluster-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-farrukhcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-farrukhcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-farrukhcluster-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-farrukhcluster-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-farrukhcluster-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-farrukhcluster-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-farrukhcluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-farrukhcluster-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-farrukhcluster-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}
