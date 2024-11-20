module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags
  public_subnet_1a = module.eks_network.output_net_subnet_pub_1a
  public_subnet_1b = module.eks_network.output_net_subnet_pub_1b
}

module "managed_node_group" {
  source            = "./managed-node-group"
  project_name      = var.project_name
  cluster_name      = module.eks_cluster.cluster_name
  subnet_private_1a = module.eks_network.output_net_subnet_priv_1a
  subnet_private_1b = module.eks_network.output_net_subnet_priv_1b
  tags              = local.tags
}