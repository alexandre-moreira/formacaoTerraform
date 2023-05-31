provider "azurerm" {
    features {
    }
}

resource "azurerm_resource_group" "grupo-recurso" {
  name = "rg-terraform-mod5"
  location = "brazilsouth"
  tags = {
    data = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp()),
    ambiente = lower("Homologacao")
    responsavel = upper("Alexandre Moreira")
    tecnologia = title("terraform")
  }
}

variable "vnetips" {
    type = list
    default = ["10.0.0.0/8"]  
}

resource "azurerm_virtual_network" "vnet" {
    name = "vnettreinamentoazure"
    location = "brazilsouth"
    resource_group_name = "rg-terraform-mod5"
    address_space = length(var.vnetips) == 0 ? ["10.0.0.0/16", "192.168.0.0/16"]: var.vnetips
}

output "vnet-numerosips" {
    value = length("${azurerm_virtual_network.vnet.address_space}")
}
