resource "azurerm_resource_group" "azurermResourceGroup" {
  name     = "${var.azurerm_resourcegroup_location_abbreviation}-${var.azurerm_resourcegroup_environment}-${var.azurerm_resourcegroup_location_short}-${var.azurerm_resourcegroup_service}-01"
  location = var.azurerm_resourcegroup_location
  tags     = var.azurerm_resourcegroup_tags
}
