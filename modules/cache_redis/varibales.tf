#AKS_cluster
variable "resource_group_name" {
  type        = string
  description = "resource_group_name name in Azure"
}

variable "location" {
  description = "Name of the location"
  type        = string
}

variable "redis_cache_name" {
  type        = string
  description = "redis_cache_name name in Azure"
}

variable "capacity_cache" {
  type        = string
  description = "capacity_cache name in Azure"
}

variable "family" {
  description = "Name of the family"
  type        = string
}

variable "sku_name_cache" {
  type        = string
  description = "sku_name_cache Plan name in Azure"
}

variable "enable_non_ssl_port" {
  description = "Name of the enable_non_ssl_port"
  type        = string
}

variable "minimum_tls_version" {
  type        = string
  description = "minimum_tls_version name in Azure"
}