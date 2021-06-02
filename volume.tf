resource "aws_ebs_volume" "ebs" {
  availability_zone = "us-east-1d"
  size              = "10"
  tags = {
    Name = "ebs-iho"
  }
}

resource "aws_volume_attachment" "ebs-att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs.id
  instance_id = aws_instance.virginia-ec2.id
}

resource "aws_ebs_volume" "ebs2" {
  availability_zone = "us-east-1b"
  size              = "15"
  tags = {
    Name = "ebs-rus"
  }
}

resource "aws_volume_attachment" "ebs-att2" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs2.id
  instance_id = aws_instance.virginia-ec3.id
}



