variable "name-rg" {
    type = string
    description = "Nome do Resource Group"
    default = "rg-variaveis"
  
}
variable "location" {
  type = string
  description = "Localização dos recursos do Azure. Ex: brazilsouth"
  default = "eastus"
}

variable "tags" {
    type = map
    description = "Tags nos Recursos e Servicos do Azure"
    default = {
        ambiente = "desenvolvimento"
        responsavel = "Alexandre Moreira"
    }
  
}

variable "vnetenderecos" {
    type = list
    default = ["10.0.0.0/16","192.168.0.0/15"]
  
}
