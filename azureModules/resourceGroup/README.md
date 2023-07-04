# Terraform - Azure Resource Group

## Introduction

This Terraform module can be used in order to create an Azure Resource Group by specifying input variables. See this link for full documentation regarding the <a href="https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group.html">azurerm_resource_group</a> and for this link for further documentation in regards to <a href="https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal">Azure Resource Groups</a>.

### Inputs

In order to use this module the following variables will be used within the `main.tf` and are declared in the `variables.tf` file.

| Variable name                          | Type   | Description                                                                                                 | Required | Default value | Example     |
| -------------------------------------- | ------ | ----------------------------------------------------------------------------------------------------------- | -------- | ------------- | ----------- |
| `azurerm_resourcegroup_location_short` | String | Generates an abbreviation of the region where the resource will be deployed, used in naming convention      | `Yes`    | ne            | we          |
| `azurerm_resourcegroup_environment`    | String | Generates an abbreviation of the environment where the resource will be deployed, used in naming convention | `Yes`    | dev           | prod        |
| `azurerm_resourcegroup_abbreviation`   | String | Generates an abbreviation of resource group, used in naming convention                                      | `Yes`    | rg            | rg          |
| `azurerm_resourcegroup_service`        | String | Generates an abbreviation of service to be used within the resource group, used in naming convention        | `Yes`    | N/A           | N/A         |
| `azurerm_resourcegroup_location`       | String | Determines the region in which resources of the module will be deployed                                     | `Yes`    | North Europe  | West Europe |

### Outputs

## How to use the module

The module is available by entering the following code into your `main.tf` or what the .tf file you are incorporating the module into is called.

```hcl
module "azurermResourceGroup" {
    source = "../../resourceGroup"
}
```
When calling the module, the variables found under section **Inputs** will be used. All but one of these variables has a default value. The variable `azurerm_resourcegroup_service` has to be specified in your `variables.tf` file like the example below.

```hcl
variable "azurerm_resourcegroup_service" {
  type    = string
  default = "vnet"
}
```

When initiating your terraform configuration by running the code below the module will be downloaded and ready for use.

```hcl
terraform init
```