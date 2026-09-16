resource "azurerm_route_table" "main" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  bgp_route_propagation_enabled = var.bgp_route_propagation_enabled
  tags                          = var.tags
}

resource "azurerm_route" "main" {
  for_each = { for r in var.routes : r.name => r }

  name                   = each.value.name
  resource_group_name    = var.resource_group_name
  route_table_name       = azurerm_route_table.main.name
  address_prefix         = each.value.address_prefix
  next_hop_type          = each.value.next_hop_type
  next_hop_in_ip_address = each.value.next_hop_in_ip_address
}
