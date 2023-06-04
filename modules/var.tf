variable "vpc_cidr_block" {
 description = "CIDR block for the VPC"
 type = string
}



variable "subnet_cidr_block" {
 description = "CIDR block for the subnet"
 default = ""
}



variable "security_group_name" {
 description = "Name of the security group"
 type  = string
}



variable "instance_type" {
 description = "EC2 instance type"
 type = string
}



variable "ami" {
 description = "AMI ID for the EC2 instance"
 type = string
}
