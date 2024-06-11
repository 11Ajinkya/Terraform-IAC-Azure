## Providers ##
terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.99.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "teraform-statefile"
  #   storage_account_name = "statefileteraform"
  #   container_name       = "tfstatefile"
  #   key                  = "mira.terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
}

provider "kubernetes" {
  host                   = module.cluster.kube_config[0].host
  client_certificate     = base64decode(module.cluster.kube_config[0].client_certificate)
  client_key             = base64decode(module.cluster.kube_config[0].client_key)
  cluster_ca_certificate = base64decode(module.cluster.kube_config[0].cluster_ca_certificate)
}


## Modules ##
module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "cluster" {
  source                  = "./modules/cluster"
  cluster                 = var.cluster
  resource_group_name     = module.resource_group.resource_group_name
  location                = module.resource_group.resource_group_location
  dns_prefix              = var.dns_prefix
  default_node_pool_name  = var.default_node_pool_name
  nodepool_count_aks      = var.nodepool_count_aks
  vm_size_aks             = var.vm_size_aks
  namespace               = var.namespace
  
  depends_on = [module.resource_group]
}

# module "web_app" {
#   source                = "./modules/web_app"
#   web_app_name          = var.web_app_name
#   location              = module.resource_group.resource_group_location
#   resource_group_name   = module.resource_group.resource_group_name
#   app_service_plan_name = var.app_service_plan_name
#   os_type               = var.os_type
#   sku_name_service_plan = var.sku_name_service_plan
#   node_version_web_app  = var.node_version_web_app

#   depends_on = [module.resource_group]
# }

# module "acr" {
#   source              = "./modules/acr"
#   acr_name            = var.acr_name
#   location            = module.resource_group.resource_group_location
#   resource_group_name = module.resource_group.resource_group_name
#   sku_acr             = var.sku_acr

#   depends_on = [module.resource_group]
# }

# module "application_insights" {
#   source                     = "./modules/app_insights"
#   resource_group_name        = module.resource_group.resource_group_name
#   location                   = module.resource_group.resource_group_location
#   log_analytics_workspace    = var.log_analytics_workspace
#   retention_in_days          = var.retention_in_days
#   application_insights_names = var.application_insights_names

#   depends_on = [module.resource_group]
# }

# module "azure_cosmosdb_postgres_cluster" {
#   source                                   = "./modules/az_cosmosdb_postgres_cluster"
#   resource_group_name                      = module.resource_group.resource_group_name
#   location                                 = module.resource_group.resource_group_location
#   azurerm_cosmosdb_postgresql_cluster_name = var.azurerm_cosmosdb_postgresql_cluster_name
#   administrator_login_password             = var.administrator_login_password
#   coordinator_storage_quota_in_mb          = var.coordinator_storage_quota_in_mb
#   coordinator_vcore_count                  = var.coordinator_vcore_count
#   node_count                               = var.node_count

#   depends_on = [module.resource_group]
# }

# module "azurerm_storage_account" {
#   source                    = "./modules/storage_ac_container"
#   resource_group_name       = module.resource_group.resource_group_name
#   location                  = module.resource_group.resource_group_location
#   storage_account_name      = var.storage_account_name
#   account_tier              = var.account_tier
#   account_replication_type  = var.account_replication_type
#   storage_container_name    = var.storage_container_name
#   container_access_type     = var.container_access_type

#   depends_on = [module.resource_group]
# }

# module "azure_cache_for_redis" {
#   source                = "./modules/cache_redis"
#   resource_group_name   = module.resource_group.resource_group_name
#   location              = module.resource_group.resource_group_location
#   redis_cache_name      = var.redis_cache_name
#   capacity_cache        = var.capacity_cache
#   family                = var.family
#   sku_name_cache        = var.sku_name_cache
#   enable_non_ssl_port   = var.enable_non_ssl_port
#   minimum_tls_version   = var.minimum_tls_version

#   depends_on = [module.resource_group]
# }

# #azure_communication_service
# module "azure_communication_service" {
#   source                              = "./modules/communication_srv"
#   resource_group_name                 = module.resource_group.resource_group_name
#   azurerm_communication_service_name  = var.azurerm_communication_service_name
#   data_location_acs                   = var.data_location_acs

#   depends_on = [module.resource_group]
# }

# #email_communication_service
# module "email_communication_service" {
#   source                            = "./modules/email_communication_srv"
#   resource_group_name               = module.resource_group.resource_group_name
#   email_communication_service_name  = var.email_communication_service_name
#   data_location_ecs                 = var.data_location_ecs

#   depends_on = [module.resource_group]
# }

# # #postgres_db
# # module "postgres_db" {
# #   source = "./modules/postgres-db"
# #   resource_group_name                      = module.resource_group.resource_group_name
# #   location                                 = module.resource_group.resource_group_location
# #   postgresql_server   = var.postgresql_server
# #   sku_name_pg_db     = var.sku_name_pg_db
# #   storage_mb_pg = var.storage_mb_pg
# #   backup_retention_days = var.backup_retention_days
# #   geo_redundant_backup_enabled_pg = var.geo_redundant_backup_enabled_pg
# #   auto_grow_enabled = var.auto_grow_enabled
# #   administrator_login = var.administrator_login
# #   administrator_login_password_pg = var.administrator_login_password_pg
# #   version_pg = var.version_pg
# #   ssl_enforcement_enabled = var.ssl_enforcement_enabled
# #   postgresql_database_name  = var.postgresql_database_name
# #   charset = var.charset
# #   collation = var.collation

# #   depends_on = [module.resource_group]
# # }

# # module "azure_AI_hub" {
# #   source = "./modules/azure_ai_hub"
# #   resource_group_name       = module.resource_group.resource_group_name
# #   location                  = module.resource_group.resource_group_location
# #   cognitive_account_name    = var.cognitive_account_name
# #   kind_ai_hub               = var.kind_ai_hub
# #   sku_name_ai_hub           = var.sku_name_ai_hub

# #   depends_on = [module.resource_group]
# # }