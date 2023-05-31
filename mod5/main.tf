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