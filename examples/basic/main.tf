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