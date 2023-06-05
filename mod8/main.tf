provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "rg" {
  name = "rg-terraform-import"
  location = "brazilsouth"
  tags = {
    "ambiente" = "treinamento"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name = "vnet-import"
  resource_group_name = "rg-terraform-import"
  location = "brazilsouth"
  address_space = ["10.0.0.0/24", "192.168.0.0/24"]
  tags = {
    "ambiente" = "testes"
  }
}

resource "azurerm_network_security_group" "nsg" {
  
}

// terraform import azurerm_resource_group.rg /subscriptions/4b8f8ff0-b8bc-4bf3-a251-3787c43efb79/resourceGroups/rg-terraform-import