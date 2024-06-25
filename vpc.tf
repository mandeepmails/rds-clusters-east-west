module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc25jun2024-east1"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24" ]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
    Region = "us-east"
  }
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc25jun2024-west1"
  cidr = "10.128.0.0/16"

  azs             = ["us-west-1a", "us-west-1b"]
  private_subnets = ["10.128.1.0/24", "10.128.2.0/24" ]
  public_subnets  = ["10.128.101.0/24", "10.128.102.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
    Region = "us-west"
  }
}