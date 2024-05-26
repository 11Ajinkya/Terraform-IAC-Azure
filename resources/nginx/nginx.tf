provider "azurerm" {
  features {}
}

# Resource block for NGINX Ingress Controller
resource "helm_release" "nginx_ingress" {
  name       = var.nginx_ingress
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"

  # Specify namespace for NGINX Ingress Controller
  namespace  = var.kubernetes_namespace_v1

  # Set true to create namespace if it doesn't exist
  create_namespace = true

  # Specify values for NGINX Ingress Controller configuration
  values = [
    file ("../resources/nginx/nginx-ingress-values.yaml")
  ]
}
