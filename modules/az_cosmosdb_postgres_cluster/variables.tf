variable "azurerm_cosmosdb_postgresql_cluster_name" {
  description = "The name of the Azure Cosmos DB PostgreSQL cluster."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location where the resources will be created."
  type        = string
}

variable "administrator_login_password" {
  description = "The administrator login password for the PostgreSQL cluster."
  type        = string
  sensitive   = true
}

variable "coordinator_storage_quota_in_mb" {
  description = "The storage quota in MB for the coordinator."
  type        = number
}

variable "coordinator_vcore_count" {
  description = "The number of vCores for the coordinator."
  type        = number
}

variable "node_count" {
  description = "The number of nodes in the PostgreSQL cluster."
  type        = number
}