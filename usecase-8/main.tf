module "ecr" {
    source = "./modules/ecr"
    repo_name = var.ecr_repo_name
}

module "sg" {
    source = "./modules/security-group"
    vpc_cidr = var.vpc_cidr
    alb_sg_name = var.alb_sg_name
    sg_name = var.sg_name
}

module "vpc" {
  source          = "./modules/vpc"
  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}
