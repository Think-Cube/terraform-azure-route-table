output "id" {
  value       = "${azurerm_route_table.routetable.id}"
  description = "The Route Table ID."
}

output "name" {
  value       = "${azurerm_route_table.routetable.name}"
  description = "The name of the route table."
}

output "resource_group_name" {
  value       = "${azurerm_route_table.routetable.resource_group_name}"
  description = "The name of the resource group in which to create the route table."
}

output "location" {
  value       = "${azurerm_route_table.routetable.location}"
  description = "Azure location where where the route table is created."
}

output "routes" {
  value       = "${azurerm_route_table.routetable.route}"
  description = "List of objects representing routes."
}

output "subnets" {
  value       = "${azurerm_route_table.routetable.subnets}"
  description = "The collection of Subnets associated with this route table."
}

output "tags" {
  value       = "${azurerm_route_table.routetable.tags}"
  description = "A mapping of tags to assign to the resource."
}