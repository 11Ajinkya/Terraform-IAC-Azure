output "Cosmos_DB_postgres_Name" {
  value = azurerm_cosmosdb_postgresql_cluster.prod.name
}

output "Cosmos_DB_postgres_Storage_MB" {
  value = azurerm_cosmosdb_postgresql_cluster.prod.coordinator_storage_quota_in_mb
}

output "Cosmos_DB_postgres_Node_count" {
  value = azurerm_cosmosdb_postgresql_cluster.prod.node_count
}

# output "Cosmos_DB_Admin_pass" {
#   value = azurerm_cosmosdb_postgresql_cluster.prod.administrator_login_password
# }

# output "cosmosdb_connectionstrings" {
#    value = "host=c-${azurerm_cosmosdb_postgresql_cluster.prod.name}.${var.uniqueID}.postgres.cosmos.azure.com port=5432;dbname=citus;user=citus;password=${azurerm_cosmosdb_postgresql_cluster.prod.administrator_login_password};sslmode=require"
#    sensitive   = true
# }