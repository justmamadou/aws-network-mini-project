
module "bastion_ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "bastion-instance"

  instance_type          = "t2.micro"
  key_name               = "mykeypair"
  monitoring             = false
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = module.bastion_vpc.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}