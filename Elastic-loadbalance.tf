resource "aws_elb" "api-dilfuzacluster-com" {
  name = "api-dilfuzacluster-com-nrprmu"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-dilfuzacluster-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-dilfuzacluster-com.id}", "${aws_subnet.utility-eu-west-1b-dilfuzacluster-com.id}", "${aws_subnet.utility-eu-west-1c-dilfuzacluster-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "dilfuzacluster.com"
    Name              = "api.dilfuzacluster.com"
  }
}

resource "aws_elb" "bastion-dilfuzacluster-com" {
  name = "bastion-dilfuzacluster-co-q18ns0"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-dilfuzacluster-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-dilfuzacluster-com.id}", "${aws_subnet.utility-eu-west-1b-dilfuzacluster-com.id}", "${aws_subnet.utility-eu-west-1c-dilfuzacluster-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "dilfuzacluster.com"
    Name              = "bastion.dilfuzacluster.com"
  }
}