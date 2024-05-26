variable "web_app_name" {
  type        = string
  description = "web app name in Azure"
}

variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "location" {
  type        = string
  description = "RG location in Azure"
}

variable "app_service_plan_name" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "os_type" {
  type        = string
  description = "os_type name in Azure"
}

variable "sku_name_service_plan" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "node_version_web_app" {
  type        = string
  description = "node_version_web_app name in Azure"
}