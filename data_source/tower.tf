
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

output "centos" {
  value = "${data.aws_ami.centos.id}"
}

resource "aws_key_pair" "tower"
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
        provisioner "remote_exec" {
            connection {
                host = self.public_ip
                type = "ssh"
                user = "centos"
                priavate_key 'file "~/.ssh/id_rsa.pub"
            }
        }
           inline = ["sudo yum install -y epel-release"]

  tags = {
    Name = "HelloWorld"
  }
}
 



#resource "aws_route53_record" "www" { 
#  zone_id = "ZONE_ID" 
#  name    = "www.example.com" 
#  type    = "A" 
#  ttl     = "300" 
#  records = [aws_instance.web.public_ip] 