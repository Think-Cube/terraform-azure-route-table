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