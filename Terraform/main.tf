provider "azurerm" {
  features {}

  client_id       = "17fef5c7-28b5-4d62-9b28-bae46e0a8830"
  client_secret   = "9na8Q~r9v4.PFYb76BZaZMktqiJEUFqopce6mbr~"
  tenant_id       = "e74a417b-ab67-48bd-921b-0fd6c5d2b1c2"
  subscription_id = "b98f53aa-1ec7-4951-b1fd-6ad6381b1ff0"
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network
  address_space       = var.address_space
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  depends_on = [azurerm_resource_group.rg]
}

resource "azurerm_subnet" "subnet01" {
  name                 = var.subnet1
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.address_prefixes1
  depends_on = [azurerm_virtual_network.vnet]

}

resource "azurerm_subnet" "subnet02" {
  name                 = var.subnet2
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.address_prefixes2
  depends_on = [azurerm_virtual_network.vnet]

}

resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  depends_on = [azurerm_virtual_network.vnet]

  security_rule {
    name                       = var.name
    priority                   = var.priority
    direction                  = var.direction
    access                     = var.access
    protocol                   = var.protocol
    source_port_range          = var.source_port_range
    destination_port_range     = var.destination_port_range
    source_address_prefix      = var.source_address_prefix
    destination_address_prefix = var.destination_address_prefix
  }

  tags = {
    environment = var.environment
  }
}



