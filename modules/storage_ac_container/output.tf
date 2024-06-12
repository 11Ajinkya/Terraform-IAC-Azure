output "Storage_Account_Name" {
  value = azurerm_storage_account.prod.name
}

output "storage_share_name" {
 value = azurerm_storage_share.prod.name
}
