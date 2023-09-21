resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_service_plan" "example" {
  for_each            = var.asp
  name                = each.value.asp_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
}