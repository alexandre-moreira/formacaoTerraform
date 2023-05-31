provider "azurerm" {
    features{}
}

resource "azurerm_resource_group" "rg" {
  name = "RG-Begin"
  location = "eastus2"
}