variable "location" {
  description = "Azure region for resource deployment"
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "portfolioResourceGroup"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  default     = "portfolioVNet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  default     = "portfolioSubnet"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  default     = ["10.0.1.0/24"]
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  default     = "portfolioAppServicePlan"
}

variable "app_service_name" {
  description = "Name of the App Service"
  default     = "portfolioAppService"
}
