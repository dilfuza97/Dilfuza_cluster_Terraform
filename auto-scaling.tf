resource "aws_autoscaling_group" "bastions-dilfuzacluster-com" {
  name                 = "bastions.dilfuzahcluster.com"
  launch_configuration = "${aws_launch_configuration.bastions-dilfuzahcluster-com.id}"
  max_size             = "${var.bastion_max_size}"
  min_size             = "${var.bastion_min_size}"
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-dilfuzacluster-com.id}", "${aws_subnet.utility-eu-west-1b-farrukhcluster-com.id}", "${aws_subnet.utility-eu-west-1c-farrukhcluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dilfuzacluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.dilfuzacluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}
resource "aws_autoscaling_group" "master-eu-west-1a-masters-dilfuzacluster-com" {
  name                 = "master-eu-west-1a.masters.farrukhcluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-dilfuzahcluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-dilfuzacluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dilfuzahcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.dilfuzacluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-dilfuzacluster-com" {
  name                 = "master-eu-west-1b.masters.dilfuzacluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-dilfuzacluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-dilfuzacluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dilfuzacluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.dilfuzacluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-dilfuzacluster-com" {
  name                 = "master-eu-west-1c.masters.farrukhcluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-dilfuzahcluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-dilfuzahcluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dilfuzacluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.farrukhcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-farrukhcluster-com" {
  name                 = "nodes.farrukhcluster.com"
  launch_configuration = "${aws_launch_configuration.nodes-farrukhcluster-com.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-farrukhcluster-com.id}", "${aws_subnet.eu-west-1b-farrukhcluster-com.id}", "${aws_subnet.eu-west-1c-farrukhcluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "farrukhcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.farrukhcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_launch_configuration" "bastions-farrukhcluster-com" {
  name_prefix                 = "bastions.farrukhcluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-farrukhcluster-com-efe05490095eb2e5e18da8280e9d1d68.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-farrukhcluster-com.id}"
  security_groups             = ["${aws_security_group.bastion-farrukhcluster-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1a-masters-farrukhcluster-com" {
  name_prefix                 = "master-eu-west-1a.masters.farrukhcluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-farrukhcluster-com-efe05490095eb2e5e18da8280e9d1d68.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-farrukhcluster-com.id}"
  security_groups             = ["${aws_security_group.masters-farrukhcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.farrukhcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1b-masters-farrukhcluster-com" {
  name_prefix                 = "master-eu-west-1b.masters.farrukhcluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-farrukhcluster-com-efe05490095eb2e5e18da8280e9d1d68.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-farrukhcluster-com.id}"
  security_groups             = ["${aws_security_group.masters-farrukhcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.farrukhcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1c-masters-farrukhcluster-com" {
  name_prefix                 = "master-eu-west-1c.masters.farrukhcluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-farrukhcluster-com-efe05490095eb2e5e18da8280e9d1d68.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-farrukhcluster-com.id}"
  security_groups             = ["${aws_security_group.masters-farrukhcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.farrukhcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-farrukhcluster-com" {
  name_prefix                 = "nodes.farrukhcluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-farrukhcluster-com-efe05490095eb2e5e18da8280e9d1d68.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-farrukhcluster-com.id}"
  security_groups             = ["${aws_security_group.nodes-farrukhcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.farrukhcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}
resource "aws_autoscaling_attachment" "bastions-farrukhcluster-com" {
  elb                    = "${aws_elb.bastion-farrukhcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-farrukhcluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-farrukhcluster-com" {
  elb                    = "${aws_elb.api-farrukhcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-farrukhcluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-farrukhcluster-com" {
  elb                    = "${aws_elb.api-farrukhcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-farrukhcluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-farrukhcluster-com" {
  elb                    = "${aws_elb.api-farrukhcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-farrukhcluster-com.id}"
}
