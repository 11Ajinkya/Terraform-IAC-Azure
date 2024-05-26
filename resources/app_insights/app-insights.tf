resource "azurerm_log_analytics_workspace" "example" {
  name                = var.log_analytics_workspace
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = var.retention_in_days
}

resource "azurerm_application_insights" "example" {
  name                = var.application_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name
  workspace_id        = azurerm_log_analytics_workspace.example.id
  application_type    = "web"
}

# output "instrumentation_key" {
#   value = azurerm_application_insights.example.instrumentation_key
# }

# output "app_id" {
#   value = azurerm_application_insights.example.app_id
# }