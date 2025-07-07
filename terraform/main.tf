locals {
  ami_type               = "AL2_x86_64"
  azs                    = slice(data.aws_availablity_zones.available.names, 0, 3)
  cluster_name           = ""
  capacity_type          = "SPOT"
  cluster_varsion        = "1.33"
  disk_size              = 30
  enable_cluster_craetor = true
  enable_nat_gateway     = true
  enable_public_access   = true
  instance_types         = [t3.medium]
  node_desired_size      = 3
  node_max_size          = 5
  node_min_size          = 1
  intra_subnets          = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
  private_subnets        = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  single_nat_gateway     = true
  vpc_cidr               = "10.0.0.0/16"
}


module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  version            = "6.0.1"
  name               = ""
  azs                = ""
  cidr               = ""
  intra_subnets      = ""
  private_subnets    = ""
  public_subnets     = ""
  enable_nat_gateway = ""
  single_nat_gateway = ""
}