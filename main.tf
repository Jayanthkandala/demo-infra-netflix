provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0d0ad8bb301edb745"
instance_type = "t2.medium"
key_name = "project"
vpc_security_group_ids = ["sg-0e45296f21ec7c07b"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}

