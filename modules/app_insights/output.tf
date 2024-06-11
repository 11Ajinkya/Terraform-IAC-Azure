output "Log_Analytics_Workspace_Name" {
    value = azurerm_log_analytics_workspace.prod.name
}

output "Log_Analytics_Workspace_sku" {
  value = azurerm_log_analytics_workspace.prod.sku
}

output "application_insights_names" {
  value = [for ai in azurerm_application_insights.prod : ai.name]
}

output "application_insights_ids" {
  value = [for ai in azurerm_application_insights.prod : ai.id]
}

output "application_insights_workspace_ids" {
  value = [for ai in azurerm_application_insights.prod : ai.workspace_id]
}