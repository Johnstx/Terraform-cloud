
region = "us-east-2"

vpc_cidr = "172.16.0.0/16"

enable_dns_support = "true" 

enable_dns_hostnames = "true" 

preferred_number_of_public_subnets = "2"

preferred_number_of_private_subnets = "4"

# environment = "production"

ami-web = "ami-070ddcea12df29c6d"

ami-bastion = "ami-0a0c06f862c8be4de"

ami-nginx = "ami-03a07f0e8f34ecd7d"

ami-sonar = "ami-0ecec06281e33f88d"

keypair = "medix"

account_no = "795823757837"

db-username = "staxx"

db-password = "devopspbl"

master-password = "devopspblproject"

master-username = "staxx"
tags = {
  Environment      = "production" 
  Owner-Email     = "johnukiwe@gmail.com"
  Managed-By      = "Terraform"
  Billing-Account = "1234567890"
}


