###########################
# Common vars
###########################
variable "environment" {
  description = "Var used for backend container name key"
  type = string
  default = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type = map
}
variable "region" {
  description = "Region in which resources are deployed"
  type = string
  default = "weu"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  default = "West Europe"
  type = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type = string
}
############################
#ROUTE TABLE variable
############################
variable "name" {
  type        = string
  description = "The name of the route table. Changing this forces a new resource to be created."
}
variable "route_table_routes" {
  type        = list(map(string))
  default     = []
  description = "List of objects representing routes. Each object accepts the arguments documented below."
  /*ROUTES = [{ name = "", address_prefix = "", next_hop_type = "", next_hop_in_ip_address = "" }]*/
}
variable "route_table_disable_bgp_route_propagation" {
  type        = bool
  default     = true
  description = "Boolean flag which controls propagation of routes learned by BGP on that route table. True means disable."
}
