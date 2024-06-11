variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "Name of the Azure resource group location"
  type        = string
}

variable "acr_name" {
  type        = string
  description = "ACR name in Azure"
}

variable "sku_acr" {
  type        = string
  description = "ACR sku name in Azure"
}