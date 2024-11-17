output "output_subnet_pub_1a" {
  value = module.eks_network.output_net_subnet_pub_1a
}

output "output_subnet_pub_1b" {
  value = module.eks_network.output_net_subnet_pub_1b
}

output "output_subnet_priv_1a" {
  value = module.eks_network.output_net_subnet_priv_1a
}

output "output_subnet_priv_1b" {
  value = module.eks_network.output_net_subnet_priv_1b
}

output "eks_vpc_config" {
  value = module.eks_cluster.eks_vpc_config
}