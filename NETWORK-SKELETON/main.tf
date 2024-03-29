provider "aws" {
  region = var.region
}


module "network_skeleton" {
  source                                               = "OT-CLOUD-KIT/network-skeleton/aws"
  version                                              = "1.0.1"
  vpc_name                                             = var.vpc_name
  cidr_block                                           = var.cidr_block
  enable_dns_hostnames                                 = var.enable_dns_hostnames
  enable_vpc_logs                                      = var.enable_vpc_logs
  public_subnets_cidr                                  = var.public_subnets_cidr
  pvt_zone_name                                        = var.pvt_zone_name
  private_subnets_cidr                                 = var.private_subnets_cidr
  avaialability_zones                                  = var.avaialability_zones
  logs_bucket                                          = var.logs_bucket
  logs_bucket_arn                                      = var.logs_bucket_arn
  tags                                                 = var.tags
  public_web_sg_name                                   = var.public_web_sg_name
  alb_certificate_arn                                  = var.alb_certificate_arn
  igw_name                                             = var.igw_name
  pub_rt_name                                          = var.pub_rt_name
  pub_subnet_name                                      = var.pub_subnet_name
  nat_name                                             = var.nat_name
  pvt_rt_ame                                           = var.pvt_rt_name
  pvt_subnet_name                                      = var.pvt_subnet_name
  alb_name                                             = var.alb_name
  enable_igw_publicRouteTable_PublicSubnets_resource   = var.enable_igw_publicRouteTable_PublicSubnets_resource
  enable_nat_privateRouteTable_PrivateSubnets_resource = var.enable_nat_privateRouteTable_PrivateSubnets_resource
  enable_public_web_security_group_resource            = var.enable_public_web_security_group_resource
  enable_pub_alb_resource                              = var.enable_pub_alb_resource 
  enable_aws_route53_zone_resource                     = var.enable_aws_route53_zone_resource 
}
