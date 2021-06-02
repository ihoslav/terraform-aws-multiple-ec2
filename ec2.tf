resource "aws_instance" "virginia-ec2" {
  ami             = var.ami
  instance_type   = var.instance-type
  subnet_id       = "subnet-0d6ee2c57cbd5bb1d"
  security_groups = [aws_security_group.secur.id]
  key_name        = aws_key_pair.key.id
  tags = {
    Name = "ec2-iho"
    

  }
}

resource "aws_instance" "virginia-ec3" {
  ami             = var.ami
  instance_type   = var.instance-type
  subnet_id       = "subnet-034e460e1951a55c4"
  security_groups = [aws_security_group.secur.id]
  key_name        = aws_key_pair.key.id
  tags = {
    Name = "ec2-rus"

  }

}