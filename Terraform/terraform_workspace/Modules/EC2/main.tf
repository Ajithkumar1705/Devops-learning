provider "aws" {
  region = "us-east-1"
}
variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}
variable "instance_type" {
  description = "The instance type to use for the instance"
  type        = string
}
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "ExampleInstance"
  }
}