
data "aws_availability_zones" "available" {
  state = "available"
}

provider "aws" {
  region = var.region
}

# Create the VPC resource
resource "aws_vpc" "main" {
  cidr_block                     = var.vpc_cidr
  enable_dns_support             = var.enable_dns_support
  enable_dns_hostnames           = var.enable_dns_hostnames

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public" {
    count = var.preferred_number_of_public_subnets == null ? length(data.aws_availability_zones.available.names) : var.preferred_number_of_public_subnets
    vpc_id = aws_vpc.main.id
    cidr_block = cidrsubnet(var.vpc_cidr, 4 , count.index)
    map_public_ip_on_launch = true
    availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge(
    var.tags,
    {
      Name = format("PublicSubnet-%s-%d", var.name, count.index)
    }
  )
}

resource "aws_subnet" "private" {
  count = var.preferred_number_of_private_subnets == null ? length(data.aws_availability_zones.available.names): var.preferred_number_of_private_subnets
  vpc_id = aws_vpc.main.id
  cidr_block = cidrsubnet(var.vpc_cidr, 4 , count.index + 4)
  map_public_ip_on_launch = false
   # Using modulo to cycle through AZs
  availability_zone = data.aws_availability_zones.available.names[count.index % length(data.aws_availability_zones.available.names)]
  # availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge(
    var.tags,
    {
      Name = format("PrivateSubnet-%s-%d", var.name, count.index)
    }
  )
}
