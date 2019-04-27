terraform {
  backend "s3" {
    bucket = "dilfuzacluster.com"
    key = "state/Dilfuza_cluster_Terraform"
    region = "eu-west-1"
  }
}
