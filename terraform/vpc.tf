#---------------------------------------------------------------
# VPC, Subnets, Internet gateway, Route tables, etc.
#---------------------------------------------------------------
module "bastion_vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name[0]
  cidr = var.vpc_cidr[0]

  azs             = var.azs
  public_subnets  = var.public_subnets_cidr


  tags = {
    Terraform = "true"
    Environment = "dev"
    Projet     = "network-projet"
  }
}

module "app_vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name[1]
  cidr = var.vpc_cidr[1]

  azs             = var.azs
  private_subnets = var.private_subnets_cidr
  public_subnets  = var.public_subnets_cidr

  enable_nat_gateway = true
  single_nat_gateway  = true
  one_nat_gateway_per_az = false

  tags = {
    Terraform = "true"
    Environment = "dev"
    Projet     = "network-projet"
  }
}