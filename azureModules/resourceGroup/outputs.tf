output "azurerm_resourcegroup_output_name" {
  value = data.azurerm_resource_group.azurermResourceGroup.name
}

output "azurerm_resourcegroup_output_id" {
  value = data.azurerm_resource_group.azurermResourceGroup.id
}

output "azurerm_resourcegroup_output_location" {
  value = data.azurerm_resource_group.azurermResourceGroup.location
}