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