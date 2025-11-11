terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "infra-rg-001"
    storage_account_name = "infrastorageacct001"
    container_name       = "infracontainer"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "85002d33-efb7-4e6a-8e6d-7457837654e2"
}