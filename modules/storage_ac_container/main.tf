resource "azurerm_storage_account" "prod" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "prod" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.prod.name
  container_access_type = var.container_access_type
}