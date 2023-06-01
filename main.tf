provider "aws" {
 region = "ap-south-1" 

}



module "vpc_subnet_nsg" {
 source = "./modules/vpc_subnet_nsg"
 vpc_cidr_block = var.vpc_cidr_block
 subnet_cidr_block = var.subnet_cidr_block
 security_group_name = "my-security-group"
}



module "ec2_instance" {
 source = "./modules/ec2_instance"
 subnet_id = module.vpc_subnet_nsg.subnet_id
 security_group_id = module.vpc_subnet_nsg.security_group_id
 instance_type = "t2.medium"
 ami = "var.ami"
}
