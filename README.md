# Terraform-EKS
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.75.1 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.16.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.33.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_aws_load_balancer_controller"></a> [eks\_aws\_load\_balancer\_controller](#module\_eks\_aws\_load\_balancer\_controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |
| <a name="module_managed_node_group"></a> [managed\_node\_group](#module\_managed\_node\_group) | ./modules/managed-node-group | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR to be used for the VPC | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used to name the reouserces (Name tag) | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region to create the resources | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all AWS resources! | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_vpc_config"></a> [eks\_vpc\_config](#output\_eks\_vpc\_config) | n/a |
| <a name="output_oidc"></a> [oidc](#output\_oidc) | n/a |
| <a name="output_output_subnet_priv_1a"></a> [output\_subnet\_priv\_1a](#output\_output\_subnet\_priv\_1a) | n/a |
| <a name="output_output_subnet_priv_1b"></a> [output\_subnet\_priv\_1b](#output\_output\_subnet\_priv\_1b) | n/a |
| <a name="output_output_subnet_pub_1a"></a> [output\_subnet\_pub\_1a](#output\_output\_subnet\_pub\_1a) | n/a |
| <a name="output_output_subnet_pub_1b"></a> [output\_subnet\_pub\_1b](#output\_output\_subnet\_pub\_1b) | n/a |
<!-- END_TF_DOCS -->