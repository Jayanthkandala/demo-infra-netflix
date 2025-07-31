provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0173c04c4bfce9148  "
instance_type = "t2.medium"
key_name = "jai.pem"
vpc_security_group_ids = ["sg-0da91ed9997d755fc"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}

