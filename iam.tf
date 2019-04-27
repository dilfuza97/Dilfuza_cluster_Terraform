resource "aws_iam_instance_profile" "bastions-farrukhcluster-com" {
  name = "bastions.farrukhcluster.com"
  role = "${aws_iam_role.bastions-farrukhcluster-com.name}"
}

resource "aws_iam_instance_profile" "masters-farrukhcluster-com" {
  name = "masters.farrukhcluster.com"
  role = "${aws_iam_role.masters-farrukhcluster-com.name}"
}

resource "aws_iam_instance_profile" "nodes-farrukhcluster-com" {
  name = "nodes.farrukhcluster.com"
  role = "${aws_iam_role.nodes-farrukhcluster-com.name}"
}

resource "aws_iam_role" "bastions-farrukhcluster-com" {
  name               = "bastions.farrukhcluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.farrukhcluster.com_policy")}"
}

resource "aws_iam_role" "masters-farrukhcluster-com" {
  name               = "masters.farrukhcluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.farrukhcluster.com_policy")}"
}

resource "aws_iam_role" "nodes-farrukhcluster-com" {
  name               = "nodes.farrukhcluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.farrukhcluster.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-farrukhcluster-com" {
  name   = "bastions.farrukhcluster.com"
  role   = "${aws_iam_role.bastions-farrukhcluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.farrukhcluster.com_policy")}"
}

resource "aws_iam_role_policy" "masters-farrukhcluster-com" {
  name   = "masters.farrukhcluster.com"
  role   = "${aws_iam_role.masters-farrukhcluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.farrukhcluster.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-farrukhcluster-com" {
  name   = "nodes.farrukhcluster.com"
  role   = "${aws_iam_role.nodes-farrukhcluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.farrukhcluster.com_policy")}"
}
