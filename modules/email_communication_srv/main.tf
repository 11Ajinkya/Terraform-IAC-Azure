resource "azurerm_email_communication_service" "prod" {
  name                = var.email_communication_service_name
  resource_group_name = var.resource_group_name
  data_location       = var.data_location_ecs
}