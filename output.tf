output "bucket_name" { 
  value = aws_instance.web.public_up
} 

output "sec_group" { 
  value = aws_security_group.allow_ssh.name
} 

output "key_name" { 
  value = aws_key_pair.deployer.key_name
} 


output "wordpress"
   value = aws_route53_record.www.aliacavdar.com

   output "IPs" {
       value = aws_instance.web.*.public_ip 
