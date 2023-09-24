
resource "azurerm_service_plan" "ASP" {
  for_each            = var.asp
  name                = each.value.asp_name
  resource_group_name = each.value.rgname
  location            = each.value.location
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
}