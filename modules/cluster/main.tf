resource "azurerm_kubernetes_cluster" "mira_cluster" {
  name                = var.cluster
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

#   kubernetes_version  = "1.26.3"

  default_node_pool {
    name       = var.default_node_pool_name
    node_count = var.nodepool_count_aks
    vm_size    = var.vm_size_aks
    # zones  = [1, 2, 3]
    
  }

  identity {
    type = "SystemAssigned" 
  }

  tags = {
    Environment = "Production"
  }
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.mira_cluster.kube_config
}

# # output "client_certificate" {
# #   value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
# #   sensitive = true
# # }

# # output "kube_config" {
# #   value = azurerm_kubernetes_cluster.example.kube_config_raw

# #   sensitive = true
# # }