output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-dilfuzacluster-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-dilfuzacluster-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-dilfuzacluster-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-dilfuzacluster-com.name}"
}

output "cluster_name" {
  value = "dilfuzacluster.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-dilfuzacluster-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-farrukhcluster-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-farrukhcluster-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-dilfuzacluster-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-dilfuzacluster-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-dilfuzacluster-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-dilfuzacluster-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-dilfuzacluster-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-dilfuzacluster-com.id}", "${aws_subnet.eu-west-1b-dilfuzacluster-com.id}", "${aws_subnet.eu-west-1c-dilfuzacluster-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-dilfuzacluster-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-dilfuzacluster-com.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-dilfuzacluster-com.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-dilfuzacluster-com.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-dilfuzacluster-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.dilfuzacluster-com.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-dilfuzacluster-com.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-dilfuzacluster-com.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-dilfuzacluster-com.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-dilfuzacluster-com.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-dilfuzacluster-com.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-dilfuzacluster-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.dilfuzacluster-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.dilfuzacluster-com.id}"
}
