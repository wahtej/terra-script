provider "aws" {
 region = "ap-south-1" 

}



module "vpc_subnet_nsg" {
 source = "./modules/vpc_subnet_nsg"
 vpc_cidr_block = "10.0.0.0/16"
 subnet_cidr_block = "10.0.1.0/24"
 security_group_name = "my-security-group"
}



module "ec2_instance" {
 source = "./modules/ec2_instance"
 subnet_id = module.vpc_subnet_nsg.subnet_id
 security_group_id = module.vpc_subnet_nsg.security_group_id
 instance_type = "t2.medium"
 ami = "ami-02eb7a4783e7e9317"
}
