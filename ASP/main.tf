data "azurerm_resource_group" "rg" {
  name = var.rgname
}

resource "azurerm_service_plan" "ASP" {
  for_each            = var.asp
  name                = each.value.asp_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
}