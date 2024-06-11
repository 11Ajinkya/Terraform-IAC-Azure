# # ./modules/cluster/output.tf
# output "kube_config" {
#   value = azurerm_kubernetes_cluster.mira_cluster.kube_config
# }

# output "client_certificate" {
#   value     = azurerm_kubernetes_cluster.mira_cluster.kube_config[0].client_certificate
#   sensitive = true
# }

output "kubernetes_cluster_name" {
  value     = azurerm_kubernetes_cluster.mira_cluster.name
  sensitive = true
}

output "namespace_name" {
  value = kubernetes_namespace.mira_production.metadata[0].name
}
