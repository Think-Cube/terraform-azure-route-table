<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.100.0 |

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.100.0 |

#### Resources

| Name | Type |
|------|------|
| [azurerm_route_table.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.100.0/docs/resources/route_table) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.100.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.100.0/docs/data-sources/resource_group) | data source |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. | `map(any)` | <pre>{<br>  "ManagedByTerraform": "True"<br>}</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Variable that defines the name of the environment. | `string` | `"dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed. | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `any` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the route table. Changing this forces a new resource to be created. | `any` | n/a | yes |
| <a name="input_route_table"></a> [route\_table](#input\_route\_table) | List of objects representing routes. Each object accepts the arguments documented below. | `list(map(string))` | `[]` | no |
| <a name="input_route_table_disable_bgp_route_propagation"></a> [route\_table\_disable\_bgp\_route\_propagation](#input\_route\_table\_disable\_bgp\_route\_propagation) | Boolean flag which controls propagation of routes learned by BGP on that route table. True means disable. | `bool` | `true` | no |
| <a name="input_route_table_name"></a> [route\_table\_name](#input\_route\_table\_name) | The name of the route table. Changing this forces a new resource to be created. | `string` | n/a | yes |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_location"></a> [location](#output\_location) | Azure location where the resource exists. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The name of the resource group in which to create the route table |
| <a name="output_route_entries"></a> [route\_entries](#output\_route\_entries) | Objects representing routes |
| <a name="output_route_table_id"></a> [route\_table\_id](#output\_route\_table\_id) | The Route Table ID. |
| <a name="output_route_table_name"></a> [route\_table\_name](#output\_route\_table\_name) | The name of the route table. |
<!-- END_TF_DOCS -->