resource "azurerm_storage_account" "prod" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_kind             = var.account_kind
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_share" "prod" {
  name                 = var.storage_share_name
  storage_account_name = azurerm_storage_account.prod.name
  quota                = 1024
  
  acl {
    id = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI"

    access_policy {
      permissions = "rwdl"
      start       = "2024-06-12T09:38:21.0000000Z"
      expiry      = "2024-06-12T10:38:21.0000000Z"
    }
  }
}