variable "resource_group_name" {
  type        = string
  description = "resource_group_name in Azure"
}

variable "location" {
  type        = string
  description = "location name in Azure"
}

variable "storage_account_name" {
  type        = string
  description = "storage_account_name name in Azure"
}

variable "account_tier" {
  type        = string
  description = "account_tier name in Azure"
}

variable "account_replication_type" {
  type        = string
  description = "account_replication_type name in Azure"
}

variable "storage_container_name" {
  type        = string
  description = "storage_container_name name in Azure"
}

variable "container_access_type" {
  type        = string
  description = "container_access_type name in Azure"
}