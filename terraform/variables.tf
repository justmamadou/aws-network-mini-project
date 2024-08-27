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

variable "app_azs" {
  description = "Availibity zone"
  type = list(string)
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "bastion_azs" {
  description = "Availibity zone"
  type = list(string)
  default = ["eu-west-1a"]
}


variable "app_private_subnets_cidr" {
  description = "private subnets cidr"
  type = list(string)
  default = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
}

variable "app_public_subnets_cidr" {
  description = "public subnets cidr"
  type = list(string)
  default = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]
}

variable "bastion_public_subnets_cidr" {
  description = "public subnets cidr"
  type = list(string)
  default = ["10.0.101.0/24"]
}

