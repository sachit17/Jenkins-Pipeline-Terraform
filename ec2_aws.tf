provider "aws" {
   region  = "ap-south-1"
 }

resource "aws_instance" "ec2-instance-terra" {
    ami  = "ami-5b673c34"
	instance_type = "t2.micro"
	tags{
	Name = "EC2_Terraform"	
	}
}



