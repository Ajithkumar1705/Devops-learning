variable "instance_type" {
	description = "this is type of the aws instance"
	type = string
	default = "t3.micro"
}

variable "ami" {
	description = "ami of the instance "
	type = string
	default = "ami-01a00762f46d584a1"
}

variable "key_name" {
	description = " key pair to be used in for the ec2 instance"
	type = string
	default = "ak"
}

variable "cidr" {
	description = " cidr block of the VPC"
	type = string 
	default = "10.0.0.0/16"
}
