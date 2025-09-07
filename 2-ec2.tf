
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_pair_name
  monitoring    = true
  # subnet_id     =

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
#
# resource "aws_instance" "public_ec2" {
#   ami = var.ec2_ami
#   instance_type = var.ec2_instance_type
#   subnet_id = aws_subnet.public[0].id
#   key_name = var.ec2_key_pair_name
#   security_groups = [aws_security_group.ec2_public.id]
#   associate_public_ip_address = true
#
#   tags = {
#     Name = "EC2 in Public subnet 0"
#   }
# }