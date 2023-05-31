provider "azurerm" {
    features{}
}

resource "azurerm_resource_group" "rg" {
  name = "RG-Begin"
  location = "eastus2"
}

//https://www.youtube.com/watch?v=ODMtvvAjAKU