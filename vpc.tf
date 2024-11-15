resource "aws_vpc" "terraform_eks_mm_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = merge(
    local.tags,
    {
      Name = "terraform_eks_mm"
    }
  )
}