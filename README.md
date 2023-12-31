## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.15.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_inbound_traffic"></a> [allowed\_inbound\_traffic](#input\_allowed\_inbound\_traffic) | Allowed Inbound Traffic for the Web Tier | <pre>map(object({<br>    from_port   = number<br>    to_port     = number<br>    protocol    = string<br>    description = string<br>    cidr_blocks = list(string)<br>    source_security_group_id = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project Name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | default region for resources | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for resources | `map(string)` | n/a | yes |
| <a name="input_tier-name"></a> [tier-name](#input\_tier-name) | Name of the Security Group | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sg_description"></a> [sg\_description](#output\_sg\_description) | The Description of the Security Group |
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | The ID of the Security Group |
| <a name="output_sg_name"></a> [sg\_name](#output\_sg\_name) | The Name of the Security Group |
