v# create security group for server
resource "aws_security_group" "server-security-group" {
  name        = "server-sg"
  description = "Enable ssh access on port 22 only to your Internet IP"

  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh-ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "server-sg"
  }
}

# Upload SSH key
resource "aws_key_pair" "aws-key" {
  key_name   = "KEY_NAME"
  public_key = file("KEY_NAME.pub")
}

# Create server
resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.type
  key_name      = "KEY_NAME"
  vpc_security_group_ids = [aws_security_group.server-security-group.id]
  tags = {
    Name = var.name
  }
}