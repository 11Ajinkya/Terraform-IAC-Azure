# resources/cluster/namespace.tf
resource "kubernetes_namespace" "example" {
  metadata {
    name = var.namespace
  }
}