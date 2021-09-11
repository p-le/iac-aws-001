data "aws_ami" "ubuntu_focal" {
  owners      = [var.ubuntu_account_number]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "instance" {
  ami                         = data.aws_ami.ubuntu_focal.id
  instance_type               = var.instance_type
  associate_public_ip_address = "true"
  monitoring                  = "true"
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids

  tags = {
    Name        = "${var.environment}-demo-instance"
    Environment = var.environment
  }
}
