variable "vpc_name" {
  description = "VPC name"
  type = list(string)
  default = [ "BASTION_VPC", "APP_VPC" ]
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type = list(string)
  default = [ "10.0.0.0/16", "10.1.0.0/16" ]
}

variable "azs" {
  description = "Availibity zone"
  type = list(string)
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}


variable "private_subnets_cidr" {
  description = "private subnets cidr"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets_cidr" {
  description = "public subnets cidr"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

