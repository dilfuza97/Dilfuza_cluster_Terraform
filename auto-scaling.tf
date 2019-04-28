resource "aws_autoscaling_group" "bastions-dilfuzacluster-com" {
  name                 = "bastions.dilfuzacluster.com"
  launch_configuration = "${aws_launch_configuration.bastions-dilfuzacluster-com.id}"
  max_size             = "${var.bastion_max_size}"
  min_size             = "${var.bastion_min_size}"
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-dilfuzacluster-com.id}", "${aws_subnet.utility-eu-west-1b-dilfuzacluster-com.id}", "${aws_subnet.utility-eu-west-1c-dilfuzacluster-com.id}"]

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
  name                 = "master-eu-west-1a.masters.dilfuzacluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-dilfuzacluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-dilfuzacluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dilfuzacluster.com"
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
  name                 = "master-eu-west-1c.masters.dilfuzacluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-dilfuzacluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-dilfuzacluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dilfuzacluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.dilfuzacluster.com"
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

resource "aws_autoscaling_group" "nodes-dilfuzacluster-com" {
  name                 = "nodes.dilfuzacluster.com"
  launch_configuration = "${aws_launch_configuration.nodes-dilfuzacluster-com.id}"
  max_size             = "${var.node_max_size}"
  min_size             = "${var.node_min_size}"
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-dilfuzacluster-com.id}", "${aws_subnet.eu-west-1b-dilfuzacluster-com.id}", "${aws_subnet.eu-west-1c-dilfuzacluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dilfuzacluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.dilfuzacluster.com"
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

resource "aws_launch_configuration" "bastions-dilfuzacluster-com" {
  name_prefix                 = "bastions.dilfuzacluster.com-"
  image_id                    = "${var.image_id}"
  instance_type               = "${var.bastions_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-dilfuzacluster-com-efe05490095eb2e5e18da8280e9d1d68.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-dilfuzacluster-com.id}"
  security_groups             = ["${aws_security_group.bastion-dilfuzacluster-com.id}"]
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

resource "aws_launch_configuration" "master-eu-west-1a-masters-dilfuzacluster-com" {
  name_prefix                 = "master-eu-west-1a.masters.dilfuzacluster.com-"
  image_id                    = "${var.image_id}"
  instance_type               = "${var.master_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-dilfuzacluster-com-efe05490095eb2e5e18da8280e9d1d68.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-dilfuzacluster-com.id}"
  security_groups             = ["${aws_security_group.masters-dilfuzacluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.dilfuzacluster.com_user_data")}"

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

resource "aws_launch_configuration" "master-eu-west-1b-masters-dilfuzacluster-com" {
  name_prefix                 = "master-eu-west-1b.masters.dilfuzacluster.com-"
  image_id                    = "${var.image_id}"
  instance_type               = "${var.master_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-dilfuzacluster-com-efe05490095eb2e5e18da8280e9d1d68.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-dilfuzacluster-com.id}"
  security_groups             = ["${aws_security_group.masters-dilfuzacluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.dilfuzacluster.com_user_data")}"

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

resource "aws_launch_configuration" "master-eu-west-1c-masters-dilfuzacluster-com" {
  name_prefix                 = "master-eu-west-1c.masters.dilfuzacluster.com-"
  image_id                    = "${var.image_id}"
  instance_type               = "${var.master_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-dilfuzacluster-com-efe05490095eb2e5e18da8280e9d1d68.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-dilfuzacluster-com.id}"
  security_groups             = ["${aws_security_group.masters-dilfuzacluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.dilfuzacluster.com_user_data")}"

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

resource "aws_launch_configuration" "nodes-dilfuzacluster-com" {
  name_prefix                 = "nodes.dilfuzacluster.com-"
  image_id                    = "${var.image_id}"
  instance_type               ="${var.nodes_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-dilfuzacluster-com-efe05490095eb2e5e18da8280e9d1d68.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-dilfuzacluster-com.id}"
  security_groups             = ["${aws_security_group.nodes-dilfuzacluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.dilfuzacluster.com_user_data")}"

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
resource "aws_autoscaling_attachment" "bastions-dilfuzacluster-com" {
  elb                    = "${aws_elb.bastion-dilfuzacluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-dilfuzacluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-dilfuzacluster-com" {
  elb                    = "${aws_elb.api-dilfuzacluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-dilfuzacluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-dilfuzacluster-com" {
  elb                    = "${aws_elb.api-dilfuzacluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-dilfuzacluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-dilfuzacluster-com" {
  elb                    = "${aws_elb.api-dilfuzacluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-dilfuzacluster-com.id}"
}
