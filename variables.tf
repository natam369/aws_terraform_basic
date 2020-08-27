variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "region_ami" {
    description = "AMIs by region"
    type = "map"
    default = {
                us-east-1 = "ami-0bcc094591f354be2"
                us-east-2 = "ami-0bbe28eb2173f6167"
                us-west-1 = "ami-0dd005d3eb03f66e8"
                us-west-2 = "ami-0a634ae95e11c6f91"
    }
}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "key_name" {}
variable "public_subnet1_cidr" {}
variable "public_subnet2_cidr" {}
variable "public_subnet3_cidr" {}
variable "private_subnet_cidr" {}
variable "public_subnet1_name" {}
variable "public_subnet2_name" {}
variable "public_subnet3_name" {}
variable "private_subnet_name" {}
variable Main_Routing_Table {}
variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = "list"
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "environment" { default = "dev" }
variable "instance_type" {
  type = "map"
  default = {
    dev = "t2.micro"
    test = "t2.micro"
    prod = "t2.micro"
    }
}
