#---------------------------------------------------------------
# VPC, Subnets, Internet gateway, Route tables, etc.
#---------------------------------------------------------------
module "bastion_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = var.bastion_vpc
  cidr = var.bastion_vpc_cidr

  azs             = var.bastion_azs
  public_subnets  = [for k, v in var.bastion_azs : cidrsubnet(var.bastion_vpc_cidr, 8, k)]

  # Manage so we can name them
  manage_default_network_acl    = true
  default_network_acl_tags      = { Name = "${var.bastion}-default" }
  manage_default_route_table    = true
  default_route_table_tags      = { Name = "${var.bastion}-default" }
  manage_default_security_group = true
  default_security_group_tags   = { Name = "${var.bastion}-default" }

  public_subnet_tags = {
    "Name" = "${var.bastion}-public-subnet"
  }

  tags = var.bastion
}

module "app_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = var.app_vpc
  cidr = var.app_vpc_cidr

  azs             = var.app_azs
  public_subnets  = [for k, v in var.app_azs : cidrsubnet(var.app_vpc_cidr, 8, k)]
  private_subnets = [for k, v in var.app_azs : cidrsubnet(var.app_vpc_cidr, 8, k + 10)]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  # Manage so we can name them
  manage_default_network_acl    = true
  default_network_acl_tags      = { Name = "${var.app}-default" }
  manage_default_route_table    = true
  default_route_table_tags      = { Name = "${var.app}-default" }
  manage_default_security_group = true
  default_security_group_tags   = { Name = "${var.app}-default" }

  public_subnet_tags = {
    "Name" = "${var.app}-public-subnet"
  }

  private_subnet_tags = {
    "Name" = "${var.app}-private-subnet"
  }

  tags = var.app
}

