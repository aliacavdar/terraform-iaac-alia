output "bucket_name" { 
  value = aws_instance.web.public_up
} 

output "sec_group" { 
  value = aws_security_group.allow_ssh.name
} 

output "key_name" { 
  value = aws_key_pair.deployer.key_name
} 
