output "resource_group_name" {
  value = azurerm_resource_group.portfolio_resource_group.name
}

output "app_service_url" {
  value = azurerm_linux_web_app.app_service.default_hostname
}
