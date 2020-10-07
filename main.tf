variable "ami" {}
variable "region" {}
variable "type" {}
variable "key" {}
variable "name" {}

provider "aws" {
  region = var.region
}

resource "aws_instance" "server" {
  ami = var.ami
  instance_type = var.type
  key_name = var.key
  tags = {
     Name = var.name
  }
}

output "instance_public_ip" {
    value = aws_instance.server.public_ip
}

