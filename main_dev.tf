provider "aws" {
 region = "ap-south-1" # Change to your desired region
 #access_key = var.aws_access_key
 #secret_key = var.aws_secret_key

}



module "module_dev" {
 source = "./modules"
 vpc_cidr_block = "10.0.0.0/16"
 subnet_cidr_block = "10.0.1.0/24"
 security_group_name = "dev-security-group"
 instance_type = "t2.medium"
 ami = "ami-0f5ee92e2d63afc18"
}


