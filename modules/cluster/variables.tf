variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  # default     = "my-resource-group"
}

variable "location" {
  description = "Location for all resources"
  type        = string
  # default     = "East US"
}

variable "dns_prefix" {
  description = "Name of the dns_prefix"
  type        = string
}

variable "default_node_pool_name" {
  type        = string
  description = "default_node_pool_name name in Azure"
}


variable "nodepool_count_aks" {
  type        = string
  description = "nodepool_count_aks name in Azure"
}

variable "vm_size_aks" {
  type        = string
  description = "vm_size_aks name in Azure"
}


variable "cluster" {
  type        = string
  description = "cluster name in Azure"
}


variable "namespace" {
  type        = string
  description = "kubernetes_namespace name in Azure"
}