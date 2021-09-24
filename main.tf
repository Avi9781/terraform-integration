resource "aws_instance" "linux_instance" {
  ami           = "ami-0a23ccb2cdd9286bb"
  instance_type = "t2.micro"
  tags = {
    name = "Terraform created Ec2"
  }
  key_name  = "linuxkey"
}
