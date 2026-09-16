# Terraform Module — Azure Route Table

Provisions an `azurerm_route_table` with custom routes for controlling network traffic flow.

## Usage

```hcl
module "route_table" {
  source = "github.com/Think-Cube/terraform-azure-route-table?ref=v1.0.0"

  name                = "my-route-table"
  resource_group_name = "my-rg"
  location            = "West Europe"

  bgp_route_propagation_enabled = false

  routes = [
    {
      name                   = "to-firewall"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.0.1.4"
    }
  ]

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_route.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route) | resource |
| [azurerm_route_table.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bgp_route_propagation_enabled"></a> [bgp\_route\_propagation\_enabled](#input\_bgp\_route\_propagation\_enabled) | Boolean flag to enable or disable BGP route propagation. Default is true (enabled). | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | The Azure region where the route table is created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the route table. Changing this value will result in a new route table being created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group where the route table is deployed. | `string` | n/a | yes |
| <a name="input_routes"></a> [routes](#input\_routes) | A list of route definitions for the route table. | <pre>list(object({<br>    name                   = string<br>    address_prefix         = string<br>    next_hop_type          = string<br>    next_hop_in_ip_address = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The Route Table ID. |
| <a name="output_name"></a> [name](#output\_name) | The name of the route table. |
| <a name="output_route_table_id"></a> [route\_table\_id](#output\_route\_table\_id) | The Route Table ID (alias). |
<!-- END_TF_DOCS -->