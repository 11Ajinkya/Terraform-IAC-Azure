output "web_app_name" {
  value = azurerm_linux_web_app.app.name
}

output "web_app_service_plan_id" {
  value = azurerm_linux_web_app.app.service_plan_id
}

output "web_app_service_plan_name" {
  value = azurerm_service_plan.plan.name
}

output "web_app_service_plan_os_type" {
  value = azurerm_service_plan.plan.os_type
}

output "web_app_service_plan_sku_name" {
  value = azurerm_service_plan.plan.sku_name
}