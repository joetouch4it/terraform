resource "aws_instance" "vm_ubuntu" {
# if we want to use alias 
#  provider = aws.far_west

  count = 1
# Amazon Machine Images catalog
# https://eu-central-1.console.aws.amazon.com/ec2/home?region=eu-central-1#AMICatalog:  
  ami                     = "ami-04e601abe3e1a910f"
  instance_type           = "t2.micro"

  tags = {
    Name = var.vm_name
  }
}
