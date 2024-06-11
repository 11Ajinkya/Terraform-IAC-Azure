# resources/cluster/namespace.tf
resource "kubernetes_namespace" "mira_production" {
  metadata {
    name = var.namespace
  }
}