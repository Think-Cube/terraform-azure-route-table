output "route_table_id" {
  description = "The Route Table ID."
  value = azurerm_route_table.main.id
  sensitive = false
}

output "route_table_name" {
  description = "The name of the route table."
  value = azurerm_route_table.main.name
  sensitive = false
}

output "route_entries" {
  description = "Objects representing routes"
  value = azurerm_route_table.main.route[*].name
  sensitive = false
}

output "location" {
  description = "Azure location where the resource exists."
  value = azurerm_route_table.main.location
  sensitive = false
}

output "resource_group_name" {
  description = "The name of the resource group in which to create the route table"
  value = azurerm_route_table.main.resource_group_name
  sensitive = false
}
