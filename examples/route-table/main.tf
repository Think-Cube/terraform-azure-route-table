provider "azurerm" {
features {}
}

module "route_table" {
  source  = "Think-Cube/route-table/azure"
  version = "1.0.0"
  route_table_name  = "routetable"
  resource_group_name  = "weu-test-rg"
  resource_group_location  = "West Europe"
  environment  = "dev"
  region  = "weu"
  route_table = [
    { name = "Route-01", address_prefix = "10.10.0.0/16", next_hop_type = "VirtualAppliance", next_hop_in_ip_address = "10.0.0.12" },
    { name = "Route-02", address_prefix = "10.20.0.0/16", next_hop_type = "VirtualAppliance", next_hop_in_ip_address = "10.0.0.16" },
    { name = "Route-03", address_prefix = "0.0.0.0/0", next_hop_type = "Internet" }
  ] 
  route_table_disable_bgp_route_propagation = "true"
  default_tags = {
      Administrator     = "John Doe"
      Department        = "IT"
      CostCentre        = "CC123"
      ContactPerson     = "Jane Smith"
      ManagedByTerraform = "True"
}  
}
