environment = "stage"
s3_bucket = "terraform-state-alia"              #Will be used to set backend.tf 
s3_folder_project = "application"             #Will be used to set backend.tf 
s3_folder_region = "us-east-1"                #Will be used to set backend.tf 
s3_folder_type = "state"                      #Will be used to set backend.tf 
s3_tfstate_file = "infrastructure.tfstate"    #Will be used to set backend.tf 



ami                                 = "ami-00068cd7555f543d5"
instance_type                       = "t2.large"  
key_name                            ="alia's_laptop"