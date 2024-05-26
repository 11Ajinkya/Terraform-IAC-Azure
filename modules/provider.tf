# terraform {
#   required_providers {
#     kubernetes = {
#       source  = "hashicorp/kubernetes"
#       version = ">= 2.5.0"
#     }
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = ">= 3.99.0"
#     }
#   }
# }

# provider "azurerm" {
#   features {}
# }

# provider "kubernetes" {
#   host                   = azurerm_kubernetes_cluster.example.kube_config[0].host
#   client_certificate     = base64decode(azurerm_kubernetes_cluster.example.kube_config[0].client_certificate)
#   client_key             = base64decode(azurerm_kubernetes_cluster.example.kube_config[0].client_key)
#   cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.example.kube_config[0].cluster_ca_certificate)
# }


# provider "azurerm" {
#    features {
#      resource_group {
#        prevent_deletion_if_contains_resources = false
#      }
#    }
# }

# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "3.99.0"
#     }
#     helm = {
#       source  = "hashicorp/helm"
#       version = ">= 2.1.0"
#     }
#   }
# }