provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAJOIAZWXXDX63IA3Q"
  secret_key = "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"
}


resource "aws_key_pair" "ec2-terra-key" {
  key_name   = "ec2-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNwbx5iVWXu03vg9TIWKdQzMtfE/yHD2EK5zNxVyVnu3BCAT/da2mmWC6j4V0oracArLSWUFCHySuo253Ra6GfbEjqfLwh8/JSeZ6AdwKU2z+DyVSbD5gEklrbflIr2I7jhJQdWkTcBKFZ4Rxd3x3sXhgLItd330g4kT+riUnkhV0j2sQ3BLis1QMmW64/WMV5dMRAG1Cy0UB1rKzPzeFBjYqfbnUqY22Y38H34YPpmGbeURAgraPmvFetP7Wix/Ya8HKneqy2U8ZPnZvP+ie8Sjs5nR2qcsFLWdoyWzGvLiLVSkCdmJPYMpbznC8OENfv5q9aE7rh8pqSryAIk4Fx Jyoti@Jyoti-PC"
}

resource "aws_instance" "web" {
  ami           = "ami-5b673c34"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.ec2-terra-key.key_name}"

  tags {
    Name = "TF_JenkinsEC2Instance"
  }
}
