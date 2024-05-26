variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "Name of the Azure resource group location"
  type        = string
}

variable "azurerm_cosmosdb_postgresql_cluster_name" {
  description = "Name of the azurerm_cosmosdb_postgresql_cluster_name"
  type        = string
}

variable "administrator_login_password" {
  description = "Name of the Azure administrator_login_password"
  type        = string
}

variable "coordinator_storage_quota_in_mb" {
  description = "Name of the Azure coordinator_storage_quota_in_mb"
  type        = string
}

variable "coordinator_vcore_count" {
  description = "Name of the Azure coordinator_vcore_count"
  type        = string
}

variable "node_count" {
  description = "Name of the Azure node_count"
  type        = string
}

# variable "node_storage_quota_in_mb" {
#   description = "Name of the Azure resource group"
#   type        = string
# }

# variable "node_vcores" {
#   description = "Name of the Azure resource group"
#   type        = string
# }