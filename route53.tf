resource "aws_route53_record" "api-farrukhcluster-com" {
  name = "api.farrukhcluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-farrukhcluster-com.dns_name}"
    zone_id                = "${aws_elb.api-farrukhcluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z2E5ESYC4VAF9L"
}

resource "aws_route53_record" "bastion-farrukhcluster-com" {
  name = "bastion.farrukhcluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-farrukhcluster-com.dns_name}"
    zone_id                = "${aws_elb.bastion-farrukhcluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z2E5ESYC4VAF9L"
}

resource "aws_route53_zone_association" "Z2E5ESYC4VAF9L" {
  zone_id = "/hostedzone/Z2E5ESYC4VAF9L"
  vpc_id  = "${aws_vpc.farrukhcluster-com.id}"
}