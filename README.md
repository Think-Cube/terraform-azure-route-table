## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.34.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.34.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_route_table.main](https://registry.terraform.io/providers/hashicorp/azurerm/4.34.0/docs/resources/route_table) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/4.34.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/4.34.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of key-value pairs used to tag the resources. These tags help organize and identify resources within the subscription. | `map(any)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Specifies the environment where the resources are deployed, such as 'dev', 'staging', or 'prod'. Used as part of the naming convention or key for backend configurations. | `string` | `"dev"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the route table. Changing this value will result in a new route table being created. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The Azure region where the resources are deployed. Use short region codes such as 'weu' (West Europe) for consistent naming conventions. | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The Azure region where the resource group is created. Updating this will recreate the resource group and its associated resources. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group where the route table is deployed. Updating this name will trigger the recreation of the resource group. | `string` | n/a | yes |
| <a name="input_route_table"></a> [route\_table](#input\_route\_table) | A list of route definitions for the route table. Each route object contains the following properties: 'name', 'address\_prefix', 'next\_hop\_type', and optionally 'next\_hop\_in\_ip\_address'. | `list(map(string))` | `[]` | no |
| <a name="input_route_table_disable_bgp_route_propagation"></a> [route\_table\_disable\_bgp\_route\_propagation](#input\_route\_table\_disable\_bgp\_route\_propagation) | A boolean flag to enable or disable the propagation of routes learned via BGP. Set to 'true' to disable propagation; 'false' to allow it. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The Route Table ID. |
| <a name="output_location"></a> [location](#output\_location) | Azure location where the route table is created. |
| <a name="output_name"></a> [name](#output\_name) | The name of the route table. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The name of the resource group in which to create the route table. |
| <a name="output_routes"></a> [routes](#output\_routes) | List of objects representing routes. |
| <a name="output_subnets"></a> [subnets](#output\_subnets) | The collection of Subnets associated with this route table. |
| <a name="output_tags"></a> [tags](#output\_tags) | A mapping of tags to assign to the resource. |
