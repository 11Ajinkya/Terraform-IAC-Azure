variable "postgresql_server" {
  type        = string
  description = "cluster name in Azure"
}

variable "sku_name_pg_db" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "storage_mb_pg" {
  type        = string
  description = "cluster name in Azure"
}

variable "backup_retention_days" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "geo_redundant_backup_enabled_pg" {
  type        = string
  description = "cluster name in Azure"
}

variable "auto_grow_enabled" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "administrator_login" {
  type        = string
  description = "cluster name in Azure"
}

variable "administrator_login_password_pg" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "version_pg" {
  type        = string
  description = "cluster name in Azure"
}

variable "ssl_enforcement_enabled" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "postgresql_database_name" {
  type        = string
  description = "cluster name in Azure"
}

variable "charset" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "collation" {
  type        = string
  description = "cluster name in Azure"
}

variable "location" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Web App"
  type        = string
}