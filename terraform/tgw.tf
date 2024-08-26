module "tgw" {
  source  = "terraform-aws-modules/transit-gateway/aws"
  version = "~> 2.0"

  name        = "my-tgw"

  enable_auto_accept_shared_attachments = true

  vpc_attachments = {
    bastion_vpc_att = {
      vpc_id       = module.bastion_vpc.vpc_id
      subnet_ids   = module.bastion_vpc.private_subnets
      dns_support  = true
      ipv6_support = true

      tgw_routes = [
        {
          destination_cidr_block = "10.0.0.0/16"
        }
        
      ]
    }

    app_vpc_att = {
      vpc_id       = module.app_vpc.vpc_id
      subnet_ids   = module.app_vpc.private_subnets
      dns_support  = true
      ipv6_support = true

      tgw_routes = [
        {
          destination_cidr_block = "10.1.0.0/16"
        }
        
      ]
    }
  }


  tags = {
    Purpose = "tgw-complete-example"
  }
}