resource "azurerm_log_analytics_workspace" "prod" {
  name                = var.log_analytics_workspace
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = var.retention_in_days
}

locals {
  application_insights_names = var.application_insights_names
}

resource "azurerm_application_insights" "prod" {
   for_each           = toset(var.application_insights_names)
  name                = each.key
  location            = var.location
  resource_group_name = var.resource_group_name
  workspace_id        = azurerm_log_analytics_workspace.prod.id
  application_type    = "web"
}