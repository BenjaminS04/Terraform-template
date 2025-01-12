
# creates security group for ec2
resource "aws_security_group" "sg" {
  vpc_id      = var.vpc_id
  name        = var.security_group_name
  description = "ec2 sg"

  ingress { 
    from_port   = 80     
    to_port     = 80     
    protocol    = "tcp"  
    cidr_blocks = ["18.206.107.24/29"]
  }

  ingress { 
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  ingress { 
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}