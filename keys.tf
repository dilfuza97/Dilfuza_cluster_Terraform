resource "aws_key_pair" "kubernetes-farrukhcluster-com-efe05490095eb2e5e18da8280e9d1d68" {
  key_name   = "kubernetes.farrukhcluster.com-ef:e0:54:90:09:5e:b2:e5:e1:8d:a8:28:0e:9d:1d:68"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.farrukhcluster.com-efe05490095eb2e5e18da8280e9d1d68_public_key")}"
}