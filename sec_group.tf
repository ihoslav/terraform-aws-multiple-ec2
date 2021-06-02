resource "aws_security_group" "secur" {
  name        = var.security-group-name
  description = "allows to ssh and http"
  vpc_id      = var.vpc-id


  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "for ssh"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "for http"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "for all"
    from_port   = 0
    protocol    = "tcp"
    to_port     = 0
  }


}

