resource "aws_instance" "my_instance" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnetid
  availability_zone = "ap-south-1a"

  tags = {
    Name = "ec2-instance"
  }
}