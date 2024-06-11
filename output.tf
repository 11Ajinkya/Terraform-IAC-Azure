## Resource Group ##
output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "resource_group_location" {
  value = module.resource_group.resource_group_location
}

## AKS Cluster ##
output "kubernetes_cluster_name" {
  value = module.cluster.kubernetes_cluster_name
}

output "namespace_name" {
  value = module.cluster.namespace_name
}

## Web App service ##
output "web_app_name" {
  value = module.web_app.web_app_name
}

output "web_app_service_plan_id" {
  value = module.web_app.web_app_service_plan_id
}

output "web_app_service_plan_name" {
  value = module.web_app.web_app_service_plan_name
}

output "web_app_service_plan_os_type" {
  value = module.web_app.web_app_service_plan_os_type
}

output "web_app_service_plan_sku_name" {
  value = module.web_app.web_app_service_plan_sku_name
}

## ACR (Container Regestry) ###
output "ACR_name" {
  value = module.acr.ACR_name
}

output "ACR_sku" {
  value = module.acr.ACR_sku
}

## Application Insights & Log Analytics Workspace ##
output "Log_Analytics_Workspace_Name" {
  value = module.application_insights.Log_Analytics_Workspace_Name
}

output "Log_Analytics_Workspace_sku" {
  value = module.application_insights.Log_Analytics_Workspace_sku
}

output "application_insights_names" {
  value = module.application_insights.application_insights_names
}

output "application_insights_ids" {
  value = module.application_insights.application_insights_ids
}

output "application_insights_workspace_ids" {
  value = module.application_insights.application_insights_workspace_ids
}

## Az Cosmos DB Postgres ##
output "Cosmos_DB_postgres_Name" {
  value = module.azure_cosmosdb_postgres_cluster.Cosmos_DB_postgres_Name
}


output "Cosmos_DB_postgres_Storage_MB" {
  value = module.azure_cosmosdb_postgres_cluster.Cosmos_DB_postgres_Storage_MB
}

output "Cosmos_DB_postgres_Node_count" {
  value = module.azure_cosmosdb_postgres_cluster.Cosmos_DB_postgres_Node_count
}

# output "cosmosdb_connectionstrings" {
#    value = "host=c-${module.azure_cosmosdb_postgres_cluster.Cosmos_DB_postgres_Name}.${var.uniqueID}.postgres.cosmos.azure.com port=5432;dbname=citus;user=citus;password=${module.azure_cosmosdb_postgres_cluster.Cosmos_DB_Admin_pass};sslmode=require"
#    sensitive   = true
# }

## Storage Account & Container ##
output "Storage_Account_Name" {
  value = module.azurerm_storage_account.Storage_Account_Name
}

output "Storage_ac_Container_Name" {
  value = module.azurerm_storage_account.Storage_ac_Container_Name
}

## Az Cache for Redis ##
output "Cache_for_Redis" {
  value = module.azure_cache_for_redis.Cache_for_Redis_Name
}

output "Cache_for_Redis_Capacity" {
  value = module.azure_cache_for_redis.Cache_for_Redis_Capacity
}


## Communication Service ##
output "Communication_service_Name" {
  value = module.azure_communication_service.Communication_service_Name
}

output "Communication_service_Data_Location" {
  value = module.azure_communication_service.Communication_service_Data_Location
}

## Email Comminication Service ##
output "Email_Communication_service_Name" {
  value = module.email_communication_service.Email_Communication_service_Name
}

output "Email_Communication_service_Data_Location" {
  value = module.email_communication_service.Email_Communication_service_Data_Location
}