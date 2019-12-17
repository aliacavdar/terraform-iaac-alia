resource "aws_instance" "web" { 
  ami           = "ami-00068cd7555f543d5" 
  instance_type = "t2.micro" 
  associate_public_ip_address = "true" 
  key name = aws_key_pair.deployer.key_name"



  user_data = file("user_file")



tags = { 
    Name = "HelloWorld" 
  } 
} 