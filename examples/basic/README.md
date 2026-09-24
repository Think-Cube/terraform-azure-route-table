<!-- BEGIN_TF_DOCS -->
# Example: Basic — Azure Route Table

Provisions an Azure Route Table with configurable routes for network traffic control. Minimal example using required inputs only.

## Usage

```hcl
module "route_table" {
  source = "../.."

  name                = "rt-myapp-dev"
  resource_group_name = "rg-example"
  location            = "West Europe"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_route_table"></a> [route\_table](#module\_route\_table) | ../.. | n/a |
<!-- END_TF_DOCS -->