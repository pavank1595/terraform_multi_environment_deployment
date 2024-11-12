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

# module "public_ip" {
#   source = "../../modules/azurerm_public_ip"
#   name = var.vm_public_ip
#   resource_group_name = module.resource_group.name
#   location = module.resource_group.location
# }

# module "network_interface" {
#   source = "../../modules/azurerm_network_interface"
#   name = var.network_interface_name
#   location = module.resource_group.location
#   resource_group_name = module.resource_group.name
#   subnet_id = module.subnet.subnet_id
#   public_ip_address_id = module.public_ip.public_ip_id
# }

# module "network_security_group" {
#   source = "../../modules/azurerm_network_security_group"
#   name = var.network_security_group_name
#   location = module.resource_group.location
#   resource_group_name = module.resource_group.name
#   network_interface_id = module.network_interface.network_interface_id
#   network_security_group_id = module.network_security_group.network_security_group_id
# }

# module "network_security_rule" {
#   source = "../../modules/azurerm_network_security_rule"
#   resource_group_name = module.resource_group.name
#   network_security_group_name = module.network_security_group.name
# }

# module "windows_virtual_machine" {
#   source = "../../modules/azurerm_windows_virtual_machine"
#   vm_name = var.vm_name
#   resource_group_name = module.resource_group.name
#   location = module.resource_group.location
#   vm_size = var.vm_size
#   vm_admin_username = var.vm_admin_username
#   vm_admin_password = var.vm_admin_password
#   network_interface_ids = [module.network_interface.network_interface_id]
#   vm_publisher = var.vm_publisher
#   vm_offer     = var.vm_offer
#   vm_sku       = var.vm_sku
#   vm_version = var.vm_version
# }