env                   = "dev"
aws-region            = "ap-south-1"
vpc-cidr-block        = "10.0.0.0/16"
vpc-name              = "vpc-project"
igw-name              = "igw"
pub-subnet-count      = 3
pub-cidr-block        = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"]
pub-availability-zone = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
pub-sub-name          = "subnet-public"
pri-subnet-count      = 3
pri-cidr-block        = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"]
pri-availability-zone = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
pri-sub-name          = "subnet-private"
public-rt-name        = "public-route-table"
private-rt-name       = "private-route-table"
eip-name              = "elasticip-ngw"
ngw-name              = "ngw"
eks-sg                = "eks-sg"
DM                    = "Tejal Dave"
project-name = "3-Tier App Deploy"
owner = "imran.shaikh@einfochips.com"
End-Date = "20-12-2024"


# EKS
is-eks-cluster-enabled     = true
cluster-version            = "1.30"
cluster-name               = "eks-cluster"
endpoint-private-access    = true
endpoint-public-access     = false
ondemand_instance_types    = ["t3.medium"]
spot_instance_types        = ["t3.medium"]
desired_capacity_on_demand = "1"
min_capacity_on_demand     = "1"
max_capacity_on_demand     = "5"
desired_capacity_spot      = "1"
min_capacity_spot          = "1"
max_capacity_spot          = "10"
addons = [
  {
    name    = "vpc-cni",
    version = "v1.18.1-eksbuild.1"
  },
  {
    name    = "coredns"
    version = "v1.11.1-eksbuild.9"
  },
  {
    name    = "kube-proxy"
    version = "v1.29.3-eksbuild.2"
  },
  {
    name    = "aws-ebs-csi-driver"
    version = "v1.30.0-eksbuild.1"
  }
  # Add more addons as needed
]
