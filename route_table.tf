resource "azurerm_route_table" "main" {
  name                = "${var.environment}-${var.name}-${var.region}-rt"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  dynamic "route" {
    for_each = var.route_table
    content {
      name                   = route.value.name
      address_prefix         = route.value.address_prefix
      next_hop_type          = route.value.next_hop_type
      next_hop_in_ip_address = lookup(route.value, "next_hop_in_ip_address", null)
    }
  }
  bgp_route_propagation_enabled = var.route_table_disable_bgp_route_propagation
  tags                          = var.default_tags
}
