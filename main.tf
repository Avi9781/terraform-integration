provider "aws"{
 region     =  "ap-south-1"
 access_key = "AKIAX546V3FNWE34VGBV"
 secret_key = "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"

}

resource "aws_instance" "web1" {
  ami           = "ami-04db49c0fb2215364"
  instance_type = "t2.micro"
}
