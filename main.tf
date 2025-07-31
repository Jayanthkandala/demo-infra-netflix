provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0d0ad8bb301edb745"
instance_type = "t2.medium"
key_name = "project.pem"
vpc_security_group_ids = ["sg-01fe2eaa0522b07b9"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}

