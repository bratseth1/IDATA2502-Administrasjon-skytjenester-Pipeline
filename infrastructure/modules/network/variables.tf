variable "vnet_name" {
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
}

variable "subnet_name" {
  description = "Name of the subnet"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
}

variable "location" {
  description = "Azure region for the resources"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}
