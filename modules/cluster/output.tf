output "eks_vpc_config" {
  value = aws_eks_cluster.eks_cluster.vpc_config
}

output "oidc" {
  value = data.tls_certificate.eks_oidc_tls_certificate.certificates[0].sha1_fingerprint
}

output "oidc_cluster_url" {
  value = data.tls_certificate.eks_oidc_tls_certificate.url
}

output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.id
}

output "certificate_authority" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}