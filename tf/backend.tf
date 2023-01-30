terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=3.0.0"
        }
    }
#  backend "azurerm" {
#    resource_group_name  = "rg-tf-01"
#    storage_account_name = "sa20230130a"
#    container_name       = "tfstate"
#    key                  = "terraform.tfstate"
#  }
    backend "local" {
    }
}