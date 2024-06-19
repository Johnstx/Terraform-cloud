
region = "us-east-2"

vpc_cidr = "172.16.0.0/16"

enable_dns_support = "true" 

enable_dns_hostnames = "true" 

preferred_number_of_public_subnets = "2"

preferred_number_of_private_subnets = "4"

# environment = "production"

ami-web = "ami-0e7667a57b1607295"

ami-bastion = "ami-09989f65fa3e5279c"

ami-nginx = "ami-0b46b8d23c5d55cdf"

ami-sonar = "ami-0346888e951210be4"

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


