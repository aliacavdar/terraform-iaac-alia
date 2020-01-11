provider "aws"{ 
  region = "us-east-1" 
} 

 

module "keyfarrukh" { 
  source           = "./modules" 
  key_name         = "keyalia" 
  public_key       = "~/.ssh/id_rsa.pub" 
}