resource "aws_route53_record" "www" { 
  zone_id = "ZONE_ID" 
  name    = "www.aliacavdar.com" 
  type    = "A" 
  ttl     = "60" 
  records = [aws_instance.web.pub_ip] 
} 