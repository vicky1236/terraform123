## subnets
This module will create subnets.

## Requirements

| Name | Version |
|------|---------|
| <a name="terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.3 |
| <a name="provider_aws"></a> [aws](#requirement\_aws) | >= 1.18.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 1.18.18 |

## Depends on Modules
- nat-gateway
- subnets
- vpc 

## Resources

| Name | Type |
|------|------|
| [aws_subnet.control_plane_zone_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.db_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.dmz_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.internal_lb_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.management_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.nlb_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.proxy_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.redis_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.squid_lb_zone_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.worker_nodes_one_zone_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.worker_nodes_two_zone_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [null_resource.nat_gateway_ids_dependency_getter](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.public_subnet_id_for_nat_dependency_setter](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [aws_subnet.control_plane_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.db_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.dmz_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.internal_lb_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.management_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.nlb_three_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.proxy_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.public_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.redis_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.squid_lb_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.worker_nodes_one_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.worker_nodes_two_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_associate_eks_internal_lb_tags_with_subnets"></a> [associate\_eks\_internal\_lb\_tags\_with\_subnets](#input\_associate\_eks\_internal\_lb\_tags\_with\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_associate_eks_worker_node_tags_with_subnets"></a> [associate\_eks\_worker\_node\_tags\_with\_subnets](#input\_associate\_eks\_worker\_node\_tags\_with\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_aws_azs"></a> [aws\_azs](#input\_aws\_azs) | comma separated string of availability zones in order of precedence | `list(string)` | n/a | yes |
| <a name="input_aws_vpc_id"></a> [aws\_vpc\_id](#input\_aws\_vpc\_id) | ID of the VPC | `any` | n/a | yes |
| <a name="input_az_count"></a> [az\_count](#input\_az\_count) | n/a | `any` | n/a | yes |
| <a name="input_control_plane_subnet_ids"></a> [control\_plane\_subnet\_ids](#input\_control\_plane\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_control_plane_zone_subnet_cidrs"></a> [control\_plane\_zone\_subnet\_cidrs](#input\_control\_plane\_zone\_subnet\_cidrs) | CIDRs for the Control Plane subnets | `map(string)` | n/a | yes |
| <a name="input_control_plane_zone_subnet_name_tags"></a> [control\_plane\_zone\_subnet\_name\_tags](#input\_control\_plane\_zone\_subnet\_name\_tags) | Name tags for the Control Plane subnets | `map(string)` | n/a | yes |
| <a name="input_create_control_plane_subnets"></a> [create\_control\_plane\_subnets](#input\_create\_control\_plane\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_create_db_subnets"></a> [create\_db\_subnets](#input\_create\_db\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_create_dmz_subnets"></a> [create\_dmz\_subnets](#input\_create\_dmz\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_create_internal_lb_subnets"></a> [create\_internal\_lb\_subnets](#input\_create\_internal\_lb\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_create_internet_gateway"></a> [create\_internet\_gateway](#input\_create\_internet\_gateway) | n/a | `any` | n/a | yes |
| <a name="input_create_management_subnets"></a> [create\_management\_subnets](#input\_create\_management\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_create_nat_gateways"></a> [create\_nat\_gateways](#input\_create\_nat\_gateways) | n/a | `any` | n/a | yes |
| <a name="input_create_nlb_subnets"></a> [create\_nlb\_subnets](#input\_create\_nlb\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_create_proxy_subnets"></a> [create\_proxy\_subnets](#input\_create\_proxy\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_create_public_subnets"></a> [create\_public\_subnets](#input\_create\_public\_subnets) | ------- Toggle Variables to create Subnets | `any` | n/a | yes |
| <a name="input_create_redis_subnets"></a> [create\_redis\_subnets](#input\_create\_redis\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_create_squid_lb_subnets"></a> [create\_squid\_lb\_subnets](#input\_create\_squid\_lb\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_create_worker_nodes_one_subnets"></a> [create\_worker\_nodes\_one\_subnets](#input\_create\_worker\_nodes\_one\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_create_worker_nodes_two_subnets"></a> [create\_worker\_nodes\_two\_subnets](#input\_create\_worker\_nodes\_two\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_db_subnet_cidrs"></a> [db\_subnet\_cidrs](#input\_db\_subnet\_cidrs) | CIDRs for the DB subnets | `map(string)` | n/a | yes |
| <a name="input_db_subnet_ids"></a> [db\_subnet\_ids](#input\_db\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_db_subnet_name_tags"></a> [db\_subnet\_name\_tags](#input\_db\_subnet\_name\_tags) | Name tags for the DB subnets | `map(string)` | n/a | yes |
| <a name="input_dmz_subnet_cidrs"></a> [dmz\_subnet\_cidrs](#input\_dmz\_subnet\_cidrs) | CIDRs for the DMZ subnets | `map(string)` | n/a | yes |
| <a name="input_dmz_subnet_ids"></a> [dmz\_subnet\_ids](#input\_dmz\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_dmz_subnet_name_tags"></a> [dmz\_subnet\_name\_tags](#input\_dmz\_subnet\_name\_tags) | Name tags for the DMZ subnets | `map(string)` | n/a | yes |
| <a name="input_eks_internal_lb_tags"></a> [eks\_internal\_lb\_tags](#input\_eks\_internal\_lb\_tags) | EKS related tags for the internal istio load balancer | `map` | `{}` | no |
| <a name="input_eks_worker_node_tags"></a> [eks\_worker\_node\_tags](#input\_eks\_worker\_node\_tags) | EKS related tags for the worker nodes | `map` | `{}` | no |
| <a name="input_global_tags"></a> [global\_tags](#input\_global\_tags) | AWS tags that will be added to all resources managed herein | `map(string)` | n/a | yes |
| <a name="input_internal_lb_subnet_cidrs"></a> [internal\_lb\_subnet\_cidrs](#input\_internal\_lb\_subnet\_cidrs) | CIDRs for theInternal LB subnets | `map(string)` | n/a | yes |
| <a name="input_internal_lb_subnet_ids"></a> [internal\_lb\_subnet\_ids](#input\_internal\_lb\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_internal_lb_subnet_name_tags"></a> [internal\_lb\_subnet\_name\_tags](#input\_internal\_lb\_subnet\_name\_tags) | Tags to apply to theInternal LB subnets | `map` | `{}` | no |
| <a name="input_internet_gateway_id"></a> [internet\_gateway\_id](#input\_internet\_gateway\_id) | n/a | `any` | n/a | yes |
| <a name="input_internet_gateway_tags"></a> [internet\_gateway\_tags](#input\_internet\_gateway\_tags) | Tags to apply to the internet gateway | `map` | `{}` | no |
| <a name="input_management_subnet_cidrs"></a> [management\_subnet\_cidrs](#input\_management\_subnet\_cidrs) | CIDRs for the management subnets | `map(string)` | n/a | yes |
| <a name="input_management_subnet_ids"></a> [management\_subnet\_ids](#input\_management\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_management_subnet_name_tags"></a> [management\_subnet\_name\_tags](#input\_management\_subnet\_name\_tags) | Name tags for the management subnets | `map(string)` | n/a | yes |
| <a name="input_multi_az_nat_gateway"></a> [multi\_az\_nat\_gateway](#input\_multi\_az\_nat\_gateway) | place a NAT gateway in each AZ | `number` | n/a | yes |
| <a name="input_nat_gateways_ids"></a> [nat\_gateways\_ids](#input\_nat\_gateways\_ids) | n/a | `any` | n/a | yes |
| <a name="input_nlb_subnet_cidrs"></a> [nlb\_subnet\_cidrs](#input\_nlb\_subnet\_cidrs) | CIDRs for the NLB Subnets subnets | `map(string)` | n/a | yes |
| <a name="input_nlb_subnet_ids"></a> [nlb\_subnet\_ids](#input\_nlb\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_nlb_subnet_name_tags"></a> [nlb\_subnet\_name\_tags](#input\_nlb\_subnet\_name\_tags) | Tags to apply to the NLB Subnets subnets | `map` | `{}` | no |
| <a name="input_private_subnet_tags"></a> [private\_subnet\_tags](#input\_private\_subnet\_tags) | Tags to apply to the private production subnets | `map` | `{}` | no |
| <a name="input_proxy_subnet_cidrs"></a> [proxy\_subnet\_cidrs](#input\_proxy\_subnet\_cidrs) | CIDRs for the Proxy subnets | `map(string)` | n/a | yes |
| <a name="input_proxy_subnet_ids"></a> [proxy\_subnet\_ids](#input\_proxy\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_proxy_subnet_name_tags"></a> [proxy\_subnet\_name\_tags](#input\_proxy\_subnet\_name\_tags) | Name tags for the Proxy subnets | `map(string)` | n/a | yes |
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | CIDRs for the public subnets | `map(string)` | n/a | yes |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_public_subnet_name_tags"></a> [public\_subnet\_name\_tags](#input\_public\_subnet\_name\_tags) | Name tags for the public subnets | `map(string)` | n/a | yes |
| <a name="input_public_subnet_tags"></a> [public\_subnet\_tags](#input\_public\_subnet\_tags) | Tags to apply to the public subnets | `map` | `{}` | no |
| <a name="input_redis_subnet_cidrs"></a> [redis\_subnet\_cidrs](#input\_redis\_subnet\_cidrs) | CIDRs for the Redis subnets | `map(string)` | n/a | yes |
| <a name="input_redis_subnet_ids"></a> [redis\_subnet\_ids](#input\_redis\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_redis_subnet_name_tags"></a> [redis\_subnet\_name\_tags](#input\_redis\_subnet\_name\_tags) | Name tags for the Redis subnets | `map(string)` | n/a | yes |
| <a name="input_single_nat_gateway"></a> [single\_nat\_gateway](#input\_single\_nat\_gateway) | n/a | `any` | n/a | yes |
| <a name="input_squid_lb_subnet_cidrs"></a> [squid\_lb\_subnet\_cidrs](#input\_squid\_lb\_subnet\_cidrs) | CIDRs for the Squid LB subnets | `map(string)` | n/a | yes |
| <a name="input_squid_lb_subnet_ids"></a> [squid\_lb\_subnet\_ids](#input\_squid\_lb\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_squid_lb_subnet_name_tags"></a> [squid\_lb\_subnet\_name\_tags](#input\_squid\_lb\_subnet\_name\_tags) | Tags to apply to the Squid LB subnets | `map` | `{}` | no |
| <a name="input_vpc_cidr_base"></a> [vpc\_cidr\_base](#input\_vpc\_cidr\_base) | Base CIDR for the VPC | `any` | n/a | yes |
| <a name="input_worker_nodes_one_subnet_cidrs"></a> [worker\_nodes\_one\_subnet\_cidrs](#input\_worker\_nodes\_one\_subnet\_cidrs) | CIDRs for the worker nodes one subnets | `map(string)` | n/a | yes |
| <a name="input_worker_nodes_one_subnet_ids"></a> [worker\_nodes\_one\_subnet\_ids](#input\_worker\_nodes\_one\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_worker_nodes_one_subnet_name_tags"></a> [worker\_nodes\_one\_subnet\_name\_tags](#input\_worker\_nodes\_one\_subnet\_name\_tags) | Tags to apply to the worker nodes one subnets | `map` | `{}` | no |
| <a name="input_worker_nodes_two_subnet_cidrs"></a> [worker\_nodes\_two\_subnet\_cidrs](#input\_worker\_nodes\_two\_subnet\_cidrs) | CIDRs for the worker nodes two subnets | `map(string)` | n/a | yes |
| <a name="input_worker_nodes_two_subnet_ids"></a> [worker\_nodes\_two\_subnet\_ids](#input\_worker\_nodes\_two\_subnet\_ids) | n/a | `any` | n/a | yes |
| <a name="input_worker_nodes_two_subnet_name_tags"></a> [worker\_nodes\_two\_subnet\_name\_tags](#input\_worker\_nodes\_two\_subnet\_name\_tags) | Tags to apply to the worker nodes two subnets | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_azs"></a> [aws\_azs](#output\_aws\_azs) | n/a |
| <a name="output_control_plane_zone_subnets_cidrs"></a> [control\_plane\_zone\_subnets\_cidrs](#output\_control\_plane\_zone\_subnets\_cidrs) | n/a |
| <a name="output_control_plane_zone_subnets_ids"></a> [control\_plane\_zone\_subnets\_ids](#output\_control\_plane\_zone\_subnets\_ids) | n/a |
| <a name="output_db_subnets_cidrs"></a> [db\_subnets\_cidrs](#output\_db\_subnets\_cidrs) | n/a |
| <a name="output_db_subnets_ids"></a> [db\_subnets\_ids](#output\_db\_subnets\_ids) | n/a |
| <a name="output_dmz_subnets_cidrs"></a> [dmz\_subnets\_cidrs](#output\_dmz\_subnets\_cidrs) | n/a |
| <a name="output_dmz_subnets_ids"></a> [dmz\_subnets\_ids](#output\_dmz\_subnets\_ids) | n/a |
| <a name="output_internal_lb_subnets_cidrs"></a> [internal\_lb\_subnets\_cidrs](#output\_internal\_lb\_subnets\_cidrs) | n/a |
| <a name="output_internal_lb_subnets_ids"></a> [internal\_lb\_subnets\_ids](#output\_internal\_lb\_subnets\_ids) | n/a |
| <a name="output_management_subnets_cidrs"></a> [management\_subnets\_cidrs](#output\_management\_subnets\_cidrs) | n/a |
| <a name="output_management_subnets_ids"></a> [management\_subnets\_ids](#output\_management\_subnets\_ids) | n/a |
| <a name="output_nlb_subnets_cidrs"></a> [nlb\_subnets\_cidrs](#output\_nlb\_subnets\_cidrs) | n/a |
| <a name="output_nlb_subnets_ids"></a> [nlb\_subnets\_ids](#output\_nlb\_subnets\_ids) | n/a |
| <a name="output_proxy_subnets_cidrs"></a> [proxy\_subnets\_cidrs](#output\_proxy\_subnets\_cidrs) | n/a |
| <a name="output_proxy_subnets_ids"></a> [proxy\_subnets\_ids](#output\_proxy\_subnets\_ids) | n/a |
| <a name="output_public_subnets_cidrs"></a> [public\_subnets\_cidrs](#output\_public\_subnets\_cidrs) | n/a |
| <a name="output_public_subnets_ids"></a> [public\_subnets\_ids](#output\_public\_subnets\_ids) | n/a |
| <a name="output_redis_subnets_cidrs"></a> [redis\_subnets\_cidrs](#output\_redis\_subnets\_cidrs) | n/a |
| <a name="output_redis_subnets_ids"></a> [redis\_subnets\_ids](#output\_redis\_subnets\_ids) | n/a |
| <a name="output_squid_lb_zone_subnets_cidrs"></a> [squid\_lb\_zone\_subnets\_cidrs](#output\_squid\_lb\_zone\_subnets\_cidrs) | n/a |
| <a name="output_squid_lb_zone_subnets_ids"></a> [squid\_lb\_zone\_subnets\_ids](#output\_squid\_lb\_zone\_subnets\_ids) | n/a |
| <a name="output_worker_nodes_one_zone_subnets_cidrs"></a> [worker\_nodes\_one\_zone\_subnets\_cidrs](#output\_worker\_nodes\_one\_zone\_subnets\_cidrs) | n/a |
| <a name="output_worker_nodes_one_zone_subnets_ids"></a> [worker\_nodes\_one\_zone\_subnets\_ids](#output\_worker\_nodes\_one\_zone\_subnets\_ids) | n/a |
| <a name="output_worker_nodes_two_zone_subnets_cidrs"></a> [worker\_nodes\_two\_zone\_subnets\_cidrs](#output\_worker\_nodes\_two\_zone\_subnets\_cidrs) | n/a |
| <a name="output_worker_nodes_two_zone_subnets_ids"></a> [worker\_nodes\_two\_zone\_subnets\_ids](#output\_worker\_nodes\_two\_zone\_subnets\_ids) | n/a |
