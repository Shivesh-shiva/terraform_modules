data "azurerm_service_plan" "asp" {
  name                = var.asp_name
  resource_group_name = var.rgname
}

resource "azurerm_windows_web_app" "windapp" {
  name                = var.webapp_name
  resource_group_name = var.rgname
  location            = var.location
  service_plan_id     = data.azurerm_service_plan.asp.id

  site_config {}
}

