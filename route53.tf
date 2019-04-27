resource "aws_route53_record" "api-dilfuzacluster-com" {
  name = "api.dilfuzacluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-dilfuzacluster-com.dns_name}"
    zone_id                = "${aws_elb.api-dilfuzacluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z2E5ESYC4VAF9L"
}

resource "aws_route53_record" "bastion-dilfuzacluster-com" {
  name = "bastion.dilfuzacluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-dilfuzacluster-com.dns_name}"
    zone_id                = "${aws_elb.bastion-dilfuzacluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z2E5ESYC4VAF9L"
}

resource "aws_route53_zone_association" "Z2E5ESYC4VAF9L" {
  zone_id = "/hostedzone/Z2E5ESYC4VAF9L"
  vpc_id  = "${aws_vpc.fdilfuzacluster-com.id}"
}