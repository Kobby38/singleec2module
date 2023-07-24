#AWS EC2 Instance Module

module "ec2_cluster" {
  source                    = "terraform-aws-modules/ec2-instance/aws"

  name                      = "my-modules-demo"
  
  ami                       = data.aws_ami.amzlinux.id
  instance_type             = "t2.micro"
  key_name                  = "September-KP"
  monitoring                = true
  vpc_security_group_ids    = ["sg-0d84fbee50daaba11"]  # Get default vPC security group
  subnet_id                 = "subnet-03d69ba9d958b052b"  # Get one public subnet from default VPC and replace
  user_data                 = file("apache-install.sh")

  tags = {

    Name        ="Modules-Demo"
    Terraform   = "true"
    Environment = "dev"
  }
}