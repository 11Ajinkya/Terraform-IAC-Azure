variable "resource_group_name" {
  type        = string
  description = "Azure resorce gropu"
}

variable "location" {
  type        = string
  description = "RG location in Azure"
}

variable "log_analytics_workspace" {
  type        = string
  description = "log_analytics_workspace Azure"
}

variable "retention_in_days" {
  type        = string
  description = "retention_in_days in Azure"
}

variable "application_insights_name" {
  type        = string
  description = "application_insights_name in Azure"
}