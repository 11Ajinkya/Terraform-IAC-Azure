## Resource Group ##
variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "Location for all resources"
  type        = string
}

## AKS_cluster ##
variable "cluster" {
  type        = string
  description = "cluster name in Azure"
}

variable "dns_prefix" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "default_node_pool_name" {
  type        = string
  description = "App Service Plan name in Azure"
}


variable "nodepool_count_aks" {
  type        = string
  description = "ACR name in Azure"
}

variable "vm_size_aks" {
  type        = string
  description = "ACR name in Azure"
}

variable "namespace" {
  type        = string
  description = "cluster name in Azure"
}


## Web-app &service plan ##
variable "os_type" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "sku_name_service_plan" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "node_version_web_app" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "web_app_name" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "app_service_plan_name" {
  type        = string
  description = "App Service Plan name in Azure"
}

## ACR ##
variable "sku_acr" {
  type        = string
  description = "ACR name in Azure"
}

variable "acr_name" {
  type        = string
  description = "ACR name in Azure"
}

## Application_insights ##
variable "log_analytics_workspace" {
  type        = string
  description = "RG location in Azure"
}

variable "retention_in_days" {
  description = "The retention period in days for the Log Analytics workspace."
  type        = number
}

variable "application_insights_names" {
  description = "The names for the Application Insights resources."
  type        = list(string)
}

## Azure_cosmosdb_postgres_cluster ##
variable "azurerm_cosmosdb_postgresql_cluster_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "administrator_login_password" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "coordinator_storage_quota_in_mb" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "coordinator_vcore_count" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "node_count" {
  description = "Name of the Azure resource group"
  type        = string
}

## Storage_Account_with_Container ##
variable "storage_account_name" {
  type        = string
  description = "storage_account_name name in Azure"
}

variable "account_tier" {
  type        = string
  description = "account_tier name in Azure"
}

variable "account_kind" {
  type        = string
  description = "account_tier name in Azure"
}

variable "account_replication_type" {
  type        = string
  description = "account_replication_type name in Azure"
}

variable "storage_share_name" {
  type        = string
  description = "storage_container_name name in Azure"
}

## Azure_cache_for_redis ##
variable "redis_cache_name" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "capacity_cache" {
  type        = string
  description = "cluster name in Azure"
}

variable "family" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "sku_name_cache" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "enable_non_ssl_port" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "minimum_tls_version" {
  type        = string
  description = "App Service Plan name in Azure"
}

## Azure_communication_service ##
variable "azurerm_communication_service_name" {
  description = "Name of the azurerm_communication_service_name"
  type        = string
}

variable "data_location_acs" {
  description = "Name of the data_location_acs"
  type        = string
}

## Azure_Communication_service ##
variable "email_communication_service_name" {
  description = "Name of the email_communication_service_name"
  type        = string
}

variable "data_location_ecs" {
  description = "Name of the data_location_ecs"
  type        = string
}