output "id" {
  description = "The Route Table ID."
  value       = azurerm_route_table.main.id
}

output "name" {
  description = "The name of the route table."
  value       = azurerm_route_table.main.name
}

output "route_table_id" {
  description = "The Route Table ID (alias)."
  value       = azurerm_route_table.main.id
}
