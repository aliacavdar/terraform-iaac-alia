resource "aws_instance" "web" { 
  ami           = "ami-00068cd7555f543d5" 
  instance_type = "t2.micro" 
 

tags = { 
    Name = "HelloWorld" 
  } 
} 
 resource "aws_instance" "web" { 
  ami           = "AMI_ID_HERE" 
  instance_type = "t2.micro" 
 

 security_groups = ["allow_ssh"] 

 tags = { 
    Name = "HelloWorld" 
  } 
} 