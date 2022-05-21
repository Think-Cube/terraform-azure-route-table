module "route-table" {
  source  = "spy86/route-table/azure"
  version = "1.0.0"
  name  = "dev-routetable"
  resource_group_name  = "weu-test-rg"
  resource_group_location  = "West Europe"
  environment  = "dev"
  region  = "weu"
  routes = [
    { name = "Route-01", address_prefix = "10.10.0.0/16", next_hop_type = "VirtualAppliance", next_hop_in_ip_address = "10.0.0.12" },
    { name = "Route-02", address_prefix = "10.20.0.0/16", next_hop_type = "VirtualAppliance", next_hop_in_ip_address = "10.0.0.16" },
    { name = "Route-03", address_prefix = "0.0.0.0/0", next_hop_type = "Internet" }
  ] 
  route_table_disable_bgp_route_propagation = "true"
}