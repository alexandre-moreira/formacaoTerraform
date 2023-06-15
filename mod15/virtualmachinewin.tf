provider "azurerm"{
    features {}
}

resource "azurerm_resource_group" "rg" {
  name = "rg-vmwindowsserver"
  location = "brazilsouth"
}

resource "azurerm_virtual_network" "vnet" {
    name = "vmwinserver-vnet"
    address_space = ["10.0.0.0/16", "192.168.0.0/16"]
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
    name =  "vmwinserver-subnet"
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes = ["10.0.2.0/24"]
}