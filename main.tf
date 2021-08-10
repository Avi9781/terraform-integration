provider "aws"{
 region     =  "ap-south-1"
 access_key = "AKIAX546V3FN5UTR7YFJ"
 secret_key = "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"

}

resource "aws_instance" "web1" {
  ami           = "ami-04db49c0fb2215364"
  instance_type = "t2.micro"
}
