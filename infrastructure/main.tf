provider "azurerm" {
  features {}
}

# Call the network module
module "network" {
  source              = "./modules/network"
  location            = var.location
  resource_group_name   = module.app_service.resource_group_name
  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  subnet_name         = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
}

# Call the app_service module
module "app_service" {
  source              = "./modules/app_service"
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_name = var.app_service_plan_name
  app_service_name    = var.app_service_name
}
