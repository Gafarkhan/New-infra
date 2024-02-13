terraform {
  backend "azurerm" {
    resource_group_name  = "wait"
    storage_account_name = "terranfra"
    container_name       = "con"
    key                  = "dev.terraform.tfstate"
  }
}
