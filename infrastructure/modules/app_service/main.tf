resource "azurerm_resource_group" "portfolio_resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_application_insights" "app_insights" {
  depends_on         = [azurerm_resource_group.portfolio_resource_group]
  name                = "${var.app_service_name}-ai"
  location            = var.location
  resource_group_name = azurerm_resource_group.portfolio_resource_group.name
  application_type    = "web"
}

resource "azurerm_service_plan" "app_service_plan" {
  depends_on         = [azurerm_resource_group.portfolio_resource_group]
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = azurerm_resource_group.portfolio_resource_group.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "app_service" {
  depends_on         = [azurerm_resource_group.portfolio_resource_group]
  name                = var.app_service_name
  location            = var.location
  resource_group_name = azurerm_resource_group.portfolio_resource_group.name
  service_plan_id     = azurerm_service_plan.app_service_plan.id
  https_only          = true

  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY"        = azurerm_application_insights.app_insights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING" = azurerm_application_insights.app_insights.connection_string
    "WEBSITE_RUN_FROM_PACKAGE"              = "1"
  }

  site_config {
    minimum_tls_version = "1.2"
  }
}
