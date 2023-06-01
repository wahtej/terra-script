variable "vpc_cidr_block" {
 description = "CIDR block for the VPC"
 default = "10.0.0.0/16"
 type = string
}



variable "subnet_cidr_block" {
 description = "CIDR block for the subnet"
 default = "10.0.1.0/24"
 type = string
}



variable "security_group_name" {
 description = "Name of the security group"
 default = "my-security-group"
 type = string
}



variable "instance_type" {
 description = "EC2 instance type"
 default = "t2.medium"
 type = string
}



variable "ami" {
 description = "AMI ID for the EC2 instance"
 default = "ami-02eb7a4783e7e9317"
 type = string
}
