output "id" {
  value       = azurerm_route_table.main.id
  description = "The Route Table ID."
  sensitive   = false
}
output "name" {
  value       = azurerm_route_table.main.name
  description = "The name of the route table."
  sensitive   = false
}
output "resource_group_name" {
  value       = azurerm_route_table.main.resource_group_name
  description = "The name of the resource group in which to create the route table."
  sensitive   = false
}
output "location" {
  value       = azurerm_route_table.main.location
  description = "Azure location where the route table is created."
  sensitive   = false
}
output "routes" {
  value       = azurerm_route_table.main.route
  description = "List of objects representing routes."
  sensitive   = false
}
output "subnets" {
  value       = azurerm_route_table.main.subnets
  description = "The collection of Subnets associated with this route table."
  sensitive   = false
}
output "tags" {
  value       = azurerm_route_table.main.tags
  description = "A mapping of tags to assign to the resource."
  sensitive   = false
}
