# Example: Advanced — Azure Route Table

```hcl
module "route_table" {
  source = "github.com/Think-Cube/terraform-azure-route-table?ref=v1.0.0"

  name                          = "rt-myapp-prod"
  resource_group_name           = "rg-example"
  location                      = "West Europe"
  bgp_route_propagation_enabled = false

  routes = [
    {
      name                   = "route-to-firewall"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.0.1.4"
    },
    {
      name           = "route-to-vnet"
      address_prefix = "10.0.0.0/8"
      next_hop_type  = "VnetLocal"
    }
  ]

  tags = {
    environment = "prod"
    managed_by  = "terraform"
  }
}```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_route_table"></a> [route\_table](#module\_route\_table) | github.com/Think-Cube/terraform-azure-route-table | v1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->