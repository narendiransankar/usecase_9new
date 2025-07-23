provider "aws" {
  region = var.region
}

module "eks_cluster" {
  source             = "./modules/cluster"
  cluster_name       = var.cluster_name
  cluster_role_arn   = var.cluster_role_arn
  subnet_ids         = var.subnet_ids
  kubernetes_version = "1.29"
}

module "eks_nodegroup" {
  source          = "./modules/nodegroup"
  cluster_name    = var.cluster_name
  node_group_name = "default-node-group"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids
  desired_size    = 2
  min_size        = 1
  max_size        = 3
  instance_type   = "t3.medium"
}
