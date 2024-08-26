variable "region" {
  default     = "eu-west-1"
  description = "AWS region"
}

variable "bastion" {
  description = "name of resource"
  type = string
  default = "bastion"
}

variable "app" {
  description = "name of resource"
  type = string
  default = "app"
}

variable "bastion_vpc" {
  description = "Name for the bastion vpc"
  type        = string
  default = "BASTION-VPC" 
}

variable "app_vpc" {
  description = "Name for the app vpc"
  type        = string
  default = "APP-VPC" 
}

variable "bastion_vpc_cidr" {
  description = "CIDR for the bastion vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "app_vpc_cidr" {
  description = "CIDR for the app vpc"
  type        = string
  default     = "10.1.0.0/16"
}

variable "instance_types" {
  description = "instance types"
  type = string
  default = "t2.micro"
}

data "aws_availability_zones" "available" {}

variable "bastion_azs" {
  description = "Availability zones"
  default = slice(data.aws_availability_zones.available.names, 0, 1)
}

variable "app_azs" {
  description = "Availability zones"
  default = slice(data.aws_availability_zones.available.names, 0, 2)
}

variable "app_nlb_name" {
  description = "name for the network load balancer"
  type = string
  default = "app-nlb"
}