resource "aws_security_group" "ssh" {
  name = "allow_ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  ami                    = "ami-0ea87431b78a82070" #Linux AMI 64-bit x86
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ssh.id]
  tags = {
    Name = "project-two"
  }
}

