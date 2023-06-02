terraform {
    backend "azurerm" {
      resource_group_name = "terraformstate"
      storage_account_name = "tformstateaztreinamento"
      container_name = "terraformstate"
      key = "DykOkoAt/d6nUAS19HLsqx6sB6/sMuBmIiZ5QRPCERvvHeF/dHLCZ6KBYxiBvE2Zk2h+Zc4KXZ2k+AStInNLRw=="
    }
}

provider "azurerm" {
    features {
    }
}

resource "azurerm_resource_group" "rg-state" {
    name = "rg_terraform_com_state"
    location = "brazilsouth"  
}