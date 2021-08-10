provider "aws"{
 region     =  "ap-south-1"
 access_key = "AKIAX546V3FN7IX3QBOB"
 secret_key = "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"

}

resource "aws_instance" "web1" {
  ami           = "ami-04db49c0fb2215364"
  instance_type = "t2.micro"
}
