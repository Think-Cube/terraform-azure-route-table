module "route_table" {
  source = "github.com/Think-Cube/terraform-azure-route-table?ref=v1.0.0"

  name                = "rt-myapp-dev"
  resource_group_name = "rg-example"
  location            = "West Europe"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}