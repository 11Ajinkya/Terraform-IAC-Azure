#  resource_group  #
resource_group_name     = "mira-prod-demo"
location                = "East US"

#  AKS_clustyer  #
cluster                 = "miracluster"
dns_prefix              = "exampleaks1"
default_node_pool_name  = "default"
nodepool_count_aks      = "2"
vm_size_aks             = "Standard_B2s_v2"

namespace               = "mira-demo-ns"

#  ACR  #
acr_name                = "miraacrtf"
sku_acr                 = "Basic"

#  webapp & service_plan  #
web_app_name            = "mira-prod-fe"
node_version_web_app    = "18-lts"  
app_service_plan_name   = "ASP-miraprod-9cf8"
os_type                 = "Linux"
sku_name_service_plan   = "B1"

#  Application_Insights  #
log_analytics_workspace = "mira-log-analytics-workspace-demo-tf"
retention_in_days = "30"
application_insights_name = "mira-prod-tf-appinsights"

#  Azure_Cosmosdb_Postgres_Cluster  #
azurerm_cosmosdb_postgresql_cluster_name = "miraproddbcluster"
administrator_login_password             = "Admin@12345"
coordinator_storage_quota_in_mb          = "131072"
coordinator_vcore_count                  = "2"
node_count                               = "0"
# node_storage_quota_in_mb                 = "131072"
# node_vcores                              = "2"


#  Azure_Storage_Account_With_Container  #
storage_account_name        = "miraprodstoraccount"
account_tier                = "Standard"
account_replication_type    = "LRS"
storage_container_name      = "democtr"
container_access_type       = "private"

#  Azure_Cache_For_Redis  #
# NOTE: the Name used for Redis needs to be globally unique
redis_cache_name        = "mira-demo3-cache"
capacity_cache          = 2
family                  = "C"
sku_name_cache          = "Standard"
enable_non_ssl_port     = false
minimum_tls_version     = "1.2"

#  Azure_Communication_Service  #
azurerm_communication_service_name  = "mira-tf-communicationservice"
data_location_acs                    =  "United States"

#  Email_Communication_Servicel  #
email_communication_service_name    = "mira-demo-emailcommunicationservice"
data_location_ecs                   = "United States"

# #  Azure_AI_Hub  #
# cognitive_account_name  = "dmei-tf-ai-hub-account"
# kind_ai_hub             = "Face"
# sku_name_ai_hub         = "F0"

#postgres-db
postgresql_server = "postgresql-server-1"
sku_name_pg_db        = "B_Gen5_2"
storage_mb_pg         = 5120
backup_retention_days = 7
geo_redundant_backup_enabled_pg = false
auto_grow_enabled = true
administrator_login = "psqladmin"
administrator_login_password_pg = "H@Sh1CoR3!"
version_pg = "9.5"
ssl_enforcement_enabled = true

postgresql_database_name    = "miratfexampledb"
charset = "UTF8"
collation   = "English_United States.1252"


