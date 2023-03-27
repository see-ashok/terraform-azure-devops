#-- root/main.tf -- # 

module "vpc_b" {
  source           = "./networking"
  vpc_cidr         = var.vpc_cidr_b #"10.1.0.0/16"
  private_sn_count = 1
  public_sn_count  = 1
  name = "VPC-A"
  public_cidrs     = [for i in range(1, 255, 2) : cidrsubnet(var.vpc_cidr_b, 8, i)]
  private_cidrs    = [for i in range(2, 255, 2) : cidrsubnet(var.vpc_cidr_b, 8, i)]
}


