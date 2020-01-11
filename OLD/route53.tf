resource "aws_route53_record" "www" { 
  zone_id = "Z365IEHDEEYRKC" 
  name    = "www.aliacavdar.com" 
  type    = "A" 
  ttl     = "60" 
  records = [aws_instance.web.pub_ip] 
} 