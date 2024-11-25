output "resource_group_name" {
  value = var.resource_group_name
}

output "vnet_id" {
  value = module.network.vnet_id
}

output "app_service_url" {
  value = module.app_service.app_service_url
}
