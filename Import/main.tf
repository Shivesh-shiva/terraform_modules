resource "azurerm_resource_group" "RG" {
  name     = "shivesh_ROG1"
  location = "eastus"
}

resource "azurerm_storage_account" "stgacc" {
  name                     = "shivstg01"
  resource_group_name      = azurerm_resource_group.RG.name
  location                 = azurerm_resource_group.RG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

 resource "azurerm_storage_container" "blob_container" {
  name                  = "blobstg"
  storage_account_name  = azurerm_storage_account.stgacc.name
  container_access_type = "private"
 }
