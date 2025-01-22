variable "environment" {
  description = "Specifies the environment where the resources are deployed, such as 'dev', 'staging', or 'prod'. Used as part of the naming convention or key for backend configurations."
  type        = string
  default     = "dev"
}

variable "default_tags" {
  description = "A mapping of key-value pairs used to tag the resources. These tags help organize and identify resources within the subscription."
  type        = map(any)
}

variable "region" {
  description = "The Azure region where the resources are deployed. Use short region codes such as 'weu' (West Europe) for consistent naming conventions."
  type        = string
  default     = "weu"
}

variable "resource_group_location" {
  description = "The Azure region where the resource group is created. Updating this will recreate the resource group and its associated resources."
  default     = "West Europe"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the route table is deployed. Updating this name will trigger the recreation of the resource group."
  type        = string
}

variable "name" {
  description = "The name of the route table. Changing this value will result in a new route table being created."
  type        = string
}

variable "route_table" {
  description = "A list of route definitions for the route table. Each route object contains the following properties: 'name', 'address_prefix', 'next_hop_type', and optionally 'next_hop_in_ip_address'."
  type        = list(map(string))
  default     = []
  /* Example:
     [
       { 
         name                   = "example-route",
         address_prefix         = "10.0.0.0/16",
         next_hop_type          = "VirtualNetworkGateway",
         next_hop_in_ip_address = "10.0.0.1"
       }
     ]
  */
}

variable "route_table_disable_bgp_route_propagation" {
  description = "A boolean flag to enable or disable the propagation of routes learned via BGP. Set to 'true' to disable propagation; 'false' to allow it."
  type        = bool
  default     = true
}
