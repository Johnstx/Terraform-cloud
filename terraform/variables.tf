
variable "region" {
    type = string
    description = "The region to deploy resources"  
}

variable "vpc_cidr" {
    type = string
    description  = "The VPC cidr"  
}

variable "enable_dns_support" {
    type = bool 
}

variable "enable_dns_hostnames" {
    type = bool
}

variable "preferred_number_of_public_subnets" {
    type = number
    description = "Number of public subnets"  
}

variable "preferred_number_of_private_subnets" {
    type = number
    description = "Number of private subnets"
}

variable "name" {
  type    = string
  default = "ACS"

}

variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}

variable "keypair" {
  type        = string
  description = "key pair for the instances"
}

variable "account_no" {
  type        = number
  description = "the account number"
}



variable "db-username" {
  type        = string
  description = "RDS admin username"
}

variable "db-password" {
  type        = string
  description = "RDS master password"
}


variable "master-username" {
  type        = string
  description = "RDS admin username"
}

variable "master-password" {
  type        = string
  description = "RDS master password"
}

variable "ami-bastion" {
  type        = string
  description = "AMI ID for the launch template"
}

variable "ami-web" {
  type        = string
  description = "AMI ID for the launch template"
}


variable "ami-nginx" {
  type        = string
  description = "AMI ID for the launch template"
}


variable "ami-sonar" {
  type        = string
  description = "AMI ID for the launch template"
}
