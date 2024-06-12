##  resource_group  ##
resource_group_name  = "mira-production-resource-group"
location             = "East US"

##  AKS_cluster  ##
cluster                 = "mira-production"
dns_prefix              = "prodaks1"
default_node_pool_name  = "default"
nodepool_count_aks      = "2"
vm_size_aks             = "Standard_B2s_v2"

namespace               = "mira-prod"

##  ACR (Azure container registry)  ##
acr_name  = "miralabsprod"
sku_acr   = "Basic"

##  Web-app & service_plan  ##
web_app_name            = "miraai-prod-fe"
node_version_web_app    = "18-lts"  
app_service_plan_name   = "ASP-miraprod-9cf8"
os_type                 = "Linux"
sku_name_service_plan   = "B1"

##  Application_Insights  ##
log_analytics_workspace   = "prod-log-analytics-workspace"
retention_in_days         = "30"
application_insights_names = [
  "document-service-prod",
  "user-service-prod",
  "loan-service-prod",
  "ai-service-prod"
]

##  Azure_Cosmos_DB_Postgres_Cluster  ##
azurerm_cosmosdb_postgresql_cluster_name = "prod-management-cluster"
administrator_login_password             = "Admin@12345"
coordinator_storage_quota_in_mb          = "131072"
coordinator_vcore_count                  = "2"
node_count                               = "0"


##  Azure_Storage_Account_With_Container  ##
storage_account_name        = "documentvolumemountprod"
account_tier                = "Premium"
account_kind                = "FileStorage"
account_replication_type    = "LRS"
storage_share_name          = "documentvolumeprod"

##  Azure_Cache_For_Redis  ##
## NOTE: the Name used for Redis needs to be globally unique ##
redis_cache_name        = "miralabs-prod"
capacity_cache          = 2
family                  = "C"
sku_name_cache          = "Standard"
enable_non_ssl_port     = false
minimum_tls_version     = "1.2"

##  Azure_Communication_Service  ##
azurerm_communication_service_name = "miralabs-acs-prod"
data_location_acs                  =  "United States"

##  Email_Communication_Servicel  ##
email_communication_service_name  = "miralabs-ecs-prod"
data_location_ecs                 = "United States"