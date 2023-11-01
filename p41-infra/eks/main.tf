module "vpc" {
  source                 = "terraform-aws-modules/vpc/aws"
  version                = "5.0.0"
  name                   = "my-vpc"
  cidr                   = var.vpc_cidr
  private_subnets  = var.private_subnet_cidrs
  public_subnets   = var.public_subnet_cidrs
  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false
  enable_dns_support     = true
  enable_dns_hostnames   = true
  azs                = var.azs
}


module "my_eks_cluster" {
  source             = "../../modules/my_eks_cluster"
  vpc_id             = module.vpc.vpc_id
  cluster_name       = var.cluster_name
  single_nat_gateway = true
  azs                = var.azs
}
