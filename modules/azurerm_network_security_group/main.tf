resource "azurerm_network_security_group" "nsg" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_network_interface_security_group_association" "nsg_association" {
  network_interface_id      = var.network_interface_id
  network_security_group_id = var.network_security_group_id
}


# resource "azurerm_network_security_group" "nsg" {
#   name                = var.name
#   location            = var.location
#   resource_group_name = var.resource_group_name

#   security_rule {
#     name                       = "AllowRDP"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "3389"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }

#   security_rule {
#     name                       = "Allow-80-Port"
#     priority                   = 101
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "80"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }

# }

# resource "azurerm_network_interface_security_group_association" "nsg_association" {
#   network_interface_id      = var.network_interface_id
#   network_security_group_id = var.network_security_group_id
# }
