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
}