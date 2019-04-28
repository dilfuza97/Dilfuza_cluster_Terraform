# Dilfuza_cluster_Terraform
Prerequisite of installation

Kubectl required

curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64

chmod +x kops-linux-amd64

sudo mv kops-linux-amd64 /usr/local/bin/kops

kops version

Setup an auto complete as a root

yum install bash-completion -y
sudo vi /etc/yum.repos.d/kubernetes.repo

[kubernetes] name=Kubernetes baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64 enabled=1 gpgcheck=0

sudo yum install -y kubectl as a jenkins user
vi .bashrc source <(kops completion bash)
Bash
Kops TAB TAB
Creating a cluster

Host zone

aws s3 mb s3://devnovemberterraform.com --region=eu-west-1

export KOPS_STATE_STORE="s3://devnovemberterraform.com"

CREATE SSH KEY OTHERWISE IT FAILS

Kops create cluster --help (Follow the instructions)

kops create cluster --name=qa-dilfuzacluster.com --node-size="t2.micro" --master-size="t2.micro" --master-zones="eu-west-1b,eu-west-1a,eu-west-1c" --networking="weave" --topology="private" --bastion="true" --dns="private" --zones="eu-west-1b,eu-west-1a,eu-west-1c" --state="s3://qa-dilfuzacluster.com" --out=. --target=terraform --yes
After it is created kops validate cluster

It should show the API server Once you have it run kubectl config view

It gives the username and passwd to login to browser kubectl cluster-info for more information
