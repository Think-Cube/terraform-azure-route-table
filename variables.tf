###########################
# Common vars
###########################
variable "environment" {
  description = "Variable that defines the name of the environment."
  type        = string
  default     = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default = {
    "ManagedByTerraform" = "True"
  }
}
variable "region" {
  description = "Region in which resources are deployed."
  type        = string
  default     = "weu"
}
############################
#Resource gropus vars
############################
variable "resource_group_location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the route table. Changing this forces a new resource to be created."
}
############################
#Route table variable
############################
variable "route_table_name" {
  type        = string
  description = "The name of the route table. Changing this forces a new resource to be created."
}
variable "route_table" {
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
