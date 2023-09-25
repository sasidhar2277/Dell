provider "azurerm" {
  features {}
}



terraform {
  backend "azurerm" {
    resource_group_name  = "rg1Azure"
    storage_account_name = "statefilestoreage"
    container_name       = "tfstate"
    key                  = "git-az.tfstate"
  }
}