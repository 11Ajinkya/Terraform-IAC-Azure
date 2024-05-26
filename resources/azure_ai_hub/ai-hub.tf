resource "azurerm_cognitive_account" "example" {
  name                = var.cognitive_account_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.kind_ai_hub

  sku_name = var.sku_name_ai_hub

  tags = {
    Acceptance = "Test"
  }
}