# Terraform Module: Azure Route Table

This Terraform module creates an Azure Route Table with dynamic route entries.

## Features

- **Dynamic Route Entries:** Define dynamic route entries as a list of objects, each representing a route with a name, address prefix, next hop type, and optional next hop IP address.

- **Tagging:** Automatically tags the created resources with common tags for better organization and management.

- **BGP Route Propagation:** Option to disable propagation of routes learned by BGP on the route table.

## Usage

### Example

```hcl
provider "azurerm" {
features {}
}

module "route_table" {
  source  = "Think-Cube/route-table/azure"
  version = "1.0.0"
  route_table_name  = "routetable"
  resource_group_name  = "weu-test-rg"
  resource_group_location  = "West Europe"
  environment  = "dev"
  region  = "weu"
  route_table = [
    { name = "Route-01", address_prefix = "10.10.0.0/16", next_hop_type = "VirtualAppliance", next_hop_in_ip_address = "10.0.0.12" },
    { name = "Route-02", address_prefix = "10.20.0.0/16", next_hop_type = "VirtualAppliance", next_hop_in_ip_address = "10.0.0.16" },
    { name = "Route-03", address_prefix = "0.0.0.0/0", next_hop_type = "Internet" }
  ] 
  route_table_disable_bgp_route_propagation = "true"
  default_tags = {
      Administrator     = "John Doe"
      Department        = "IT"
      CostCentre        = "CC123"
      ContactPerson     = "Jane Smith"
      ManagedByTerraform = "True"
}  
}
```

### Variables

- `environment`: Variable that defines the name of the environment.
- `default_tags`: A mapping of tags to assign to the resource.
- `region`: Region in which resources are deployed.
- `resource_group_location`: Specifies the supported Azure location where the resource exists.
- `resource_group_name`: The name of the resource group in which to create the route table.
- `route_table`: The name of the route table.
- `route_table_disable_bgp_route_propagation`: Boolean flag to control propagation of routes learned by BGP on that route table.

### Outputs

- `route_table_id`: The Route Table ID.
- `route_table_name`: The name of the route table.
- `route_entries`: Objects representing routes.
- `location`: Azure location where the resource exists.
- `resource_group_name`: The name of the resource group in which the route table was created.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Contribution

Feel free to contribute by opening issues or pull requests. Your feedback and improvements are highly appreciated!
