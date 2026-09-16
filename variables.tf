variable "name" {
  description = "The name of the route table. Changing this value will result in a new route table being created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the route table is deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where the route table is created."
  type        = string
}

variable "bgp_route_propagation_enabled" {
  description = "Boolean flag to enable or disable BGP route propagation. Default is true (enabled)."
  type        = bool
  default     = true
}

variable "routes" {
  description = "A list of route definitions for the route table."
  type = list(object({
    name                   = string
    address_prefix         = string
    next_hop_type          = string
    next_hop_in_ip_address = optional(string)
  }))
  default = []
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
