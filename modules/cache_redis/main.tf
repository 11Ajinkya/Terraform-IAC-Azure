# NOTE: the Name used for Redis needs to be globally unique
resource "azurerm_redis_cache" "prod" {
  name                = var.redis_cache_name
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = var.capacity_cache
  family              = var.family
  sku_name            = var.sku_name_cache
  enable_non_ssl_port = var.enable_non_ssl_port
  minimum_tls_version = var.minimum_tls_version

  redis_configuration {
  }
}