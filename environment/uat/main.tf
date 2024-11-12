module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  name   = var.resource_group_name
  location = var.resource_group_location
}

module "virtual_network" {
  source = "../../modules/azurerm_virtual_network"
  name   = var.vnet_name
  location = module.resource_group.location
  resource_group_name = module.resource_group.name
  address_space = var.vnet_address_space
}

module "subnet" {
  source = "../../modules/azurerm_subnet"
  name = var.subnet_name
  resource_group_name = module.resource_group.name
  virtual_network_name = module.virtual_network.name
  address_prefixes = var.subnet_address_prefixes
}