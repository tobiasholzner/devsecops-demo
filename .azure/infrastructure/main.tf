terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-tfscan-demo" {
  name     = "rg-tfscan-demo"
  location = "West Europe"
}

resource "azurerm_storage_account" "satfscandemo" {
  name                      = "satfscandemo"
  resource_group_name       = azurerm_resource_group.rg-tfscan-demo.name
  location                  = azurerm_resource_group.rg-tfscan-demo.location
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  enable_https_traffic_only = false
}
