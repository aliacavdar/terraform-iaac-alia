provider "aws" {
 region = "us-east-1"
}

data "aws_ami" "centos" {
  filter {
  name = "root-device-type"
  values = ["ebs"]
}
filter {
name = "name"
values = ["CentOS Linux 7 x86_64 HVM EBS *"]
}
  most_recent = true
  owners = ["679593333241"]

}

output "ami" {
  value = "${data.aws_ami.ubuntu.id}"
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}