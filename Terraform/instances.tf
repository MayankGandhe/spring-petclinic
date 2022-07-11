module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "application-instnace"

  ami                    = "ami-02d1e544b84bf7502"
  instance_type          = "t2.micro"
  monitoring             = true
  subnet_id              = aws_subnet.private-subnet["172.20.20.0/24"].id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
  
}
