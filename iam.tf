resource "aws_iam_instance_profile" "bastions-farrukhcluster-com" {
  name = "bastions.dilfuzacluster.com"
  role = "${aws_iam_role.bastions-dilfuzacluster-com.name}"
}

resource "aws_iam_instance_profile" "masters-dilfuzacluster-com" {
  name = "masters.dilfuzacluster.com"
  role = "${aws_iam_role.masters-dilfuzacluster-com.name}"
}

resource "aws_iam_instance_profile" "nodes-dilfuzacluster-com" {
  name = "nodes.dilfuzacluster.com"
  role = "${aws_iam_role.nodes-dilfuzacluster-com.name}"
}

resource "aws_iam_role" "bastions-dilfuzacluster-com" {
  name               = "bastions.dilfuzacluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.dilfuzacluster.com_policy")}"
}

resource "aws_iam_role" "masters-dilfuzacluster-com" {
  name               = "masters.dilfuzacluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.dilfuzacluster.com_policy")}"
}

resource "aws_iam_role" "nodes-dilfuzacluster-com" {
  name               = "nodes.dilfuzacluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.dilfuzacluster.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-dilfuzacluster-com" {
  name   = "bastions.dilfuzacluster.com"
  role   = "${aws_iam_role.bastions-dilfuzacluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.dilfuzacluster.com_policy")}"
}

resource "aws_iam_role_policy" "masters-dilfuzacluster-com" {
  name   = "masters.dilfuzacluster.com"
  role   = "${aws_iam_role.masters-dilfuzacluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.dilfuzacluster.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-dilfuzacluster-com" {
  name   = "nodes.dilfuzacluster.com"
  role   = "${aws_iam_role.nodes-dilfuzacluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.dilfuzacluster.com_policy")}"
}
