variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "subnet_address_prefixes" {
  type = list(string)
}

# variable "network_interface_name" {
#   type = string
# }

# variable "network_security_group_name" {
#   type = string
# }

# variable "vm_name" {
#   type = string
# }

# variable "vm_size" {
#   type = string
# }

# variable "vm_admin_username" {
#   type = string
# }

# variable "vm_admin_password" {
#   type = string
# }

# variable "vm_publisher" {
#   type = string
# }

# variable "vm_offer" {
#   type = string
# }

# variable "vm_sku" {
#   type = string
# }

# variable "vm_version" {
#   type = string
# }

# variable "vm_public_ip" {
#   type = string
# }