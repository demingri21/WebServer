#hcl
provider "aws" {
region = "us-west-2"
}

resource "aws_instance" "web" {
ami = "ami-00f46ccd1cbfb363e" # Ubuntu Server 24.04 LTS in us-west-2
instance_type = "t3.micro"

tags = {
Name = "TerraformWebServer"
}

key_name = "terrafrom_key" # Replace with your AWS key pair

security_groups = [aws_security_group.web_sg.name]
}

resource "aws_security_group" "web_sg" {
name = "web_sg"
description = "Allow SSH and HTTP"

ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
}
