provider "aws" {
	alias = "ap-south-1"
	region= "ap-south-1"
	}
provider "aws" {
	alias =  "us-east-1"
	region = "us-east-1"

	}

resource "aws_instance" "ap-south-instance" {
	ami = "ami-01a00762f46d584a1"
	instance_type = "t3.micro"
	provider = aws.ap-south-1
}

resource "aws_instance" "us-east-instance" {
        ami = "ami-01a00762f46d584a1"
        instance_type = "t3.micro"
        provider = "aws.us-east-1"
}
