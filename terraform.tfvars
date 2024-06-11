##  resource_group  ##
resource_group_name  = "production-resource-group"
location             = "East US"

##  AKS_cluster  ##
cluster                 = "cluster"
dns_prefix              = "prodaks1"
default_node_pool_name  = "default"
nodepool_count_aks      = "2"
vm_size_aks             = "Standard_B2s_v2"

namespace               = "prod"

##  ACR (Azure container registry)  ##
acr_name  = "projectacr"
sku_acr   = "Basic"

##  Web-app & service_plan  ##
web_app_name            = "prod-fe"
node_version_web_app    = "18-lts"  
app_service_plan_name   = "ASP-prod-9cf8"
os_type                 = "Linux"
sku_name_service_plan   = "B1"

##  Application_Insights  ##
log_analytics_workspace   = "Prod-Log-Analytics-workspace"
retention_in_days         = "30"
application_insights_names = [
  "document-service-prod",
  "user-service-prod",
  "loan-service-prod",
  "ai-service-prod"
]

##  Azure_Cosmos_DB_Postgres_Cluster  ##
azurerm_cosmosdb_postgresql_cluster_name = "prod-management-cluster"
administrator_login_password             = ""
coordinator_storage_quota_in_mb          = "131072"
coordinator_vcore_count                  = "2"
node_count                               = "0"


##  Azure_Storage_Account_With_Container  ##
storage_account_name        = "prodstoraccount"
account_tier                = "Standard"
account_replication_type    = "LRS"
storage_container_name      = "democtr"
container_access_type       = "private"

##  Azure_Cache_For_Redis  ##
## NOTE: the Name used for Redis needs to be globally unique ##
redis_cache_name        = "labs-prod"
capacity_cache          = 2
family                  = "C"
sku_name_cache          = "Standard"
enable_non_ssl_port     = false
minimum_tls_version     = "1.2"

##  Azure_Communication_Service  ##
azurerm_communication_service_name = "-tf-communicationservice"
data_location_acs                  =  "United States"

##  Email_Communication_Servicel  ##
email_communication_service_name  = "demo-emailcommunicationservice"
data_location_ecs                 = "United States"

# ## Postgres-db ##
# postgresql_server               = "postgresql-server-1"
# sku_name_pg_db                  = "B_Gen5_2"
# storage_mb_pg                   = 5120
# backup_retention_days           = 7
# geo_redundant_backup_enabled_pg = false
# auto_grow_enabled               = true
# administrator_login             = "psqladmin"
# administrator_login_password_pg = ""
# version_pg                      = "9.5"
# ssl_enforcement_enabled         = true

# postgresql_database_name  = "tfexampledb"
# charset                   = "UTF8"
# collation                 = "English_United States.1252"

# ##  Azure_AI_Hub  ##
# cognitive_account_name  = "dmei-tf-ai-hub-account"
# kind_ai_hub             = "Face"
# sku_name_ai_hub         = "F0"