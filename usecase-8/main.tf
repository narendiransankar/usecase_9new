module "ecr" {
    source = "./modules/ecr"
    repo_name = var.ecr_repo_name
}

module "sg" {
    source = "./modules/security-group"
    vpc_id = var.vpc_id
    alb_sg_name = var.alb_sg_name
    sg_name = var.sg_name
}