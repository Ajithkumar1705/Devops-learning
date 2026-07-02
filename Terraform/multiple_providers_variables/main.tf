resource "aws_instance" "example" {
	ami = var.ami
	instance_type = var.instance_type
	key_name = var.key_name
}

resource "aws_vpc" "main" {
	cidr_block = var.cidr
	}

output "ec2_id" {
	value=aws_instance.example.id
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id

}

output "vpc_cidr" {
  description = "VPC CIDR Block"
  value       = aws_vpc.main.cidr_block
}
