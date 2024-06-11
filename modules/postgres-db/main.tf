resource "azurerm_postgresql_server" "example" {
  name                = var.postgresql_server
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name = var.sku_name_pg_db

  storage_mb                   = var.storage_mb_pg
  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled_pg
  auto_grow_enabled            = var.auto_grow_enabled

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password_pg
  version                      = var.version_pg
  ssl_enforcement_enabled      = var.ssl_enforcement_enabled
}

resource "azurerm_postgresql_database" "example" {
  name                = var.postgresql_database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.example.name
  charset             = var.charset
  collation           = var.collation

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}