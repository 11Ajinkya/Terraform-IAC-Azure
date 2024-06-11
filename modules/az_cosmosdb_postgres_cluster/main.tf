resource "azurerm_cosmosdb_postgresql_cluster" "prod" {
  name                            = var.azurerm_cosmosdb_postgresql_cluster_name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  administrator_login_password    = var.administrator_login_password
  coordinator_storage_quota_in_mb = var.coordinator_storage_quota_in_mb
  coordinator_vcore_count         = var.coordinator_vcore_count
  node_count                      = var.node_count
}