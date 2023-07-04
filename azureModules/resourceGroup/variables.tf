variable "azurerm_resourcegroup_location_short" {
  type    = string
  default = "ne"
}

variable "azurerm_resourcegroup_environment" {
  type    = string
  default = "dev"
}

variable "azurerm_resourcegroup_abbreviation" {
  type    = string
  default = "rg"
}

variable "azurerm_resourcegroup_service" {
  type = string
}

variable "azurerm_resourcegroup_location" {
  type    = string
  default = "North Europe"
}

variable "azurerm_resourcegroup_tags" {
  type = map(string)
}