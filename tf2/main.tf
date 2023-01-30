#data "azurerm_client_config" "current" {}
 
terraform {
    backend "local" {
    }
}
 
provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x.
    # If you're using version 1.x, the "features" block is not allowed.
    version = "~>2.0"
    features {}
}

resource "azurerm_resource_group" "tamops" {
  name     = "rg-test-04"
  location = "uksouth"
}