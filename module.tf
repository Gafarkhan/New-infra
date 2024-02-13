module "Dev" {
    source                      = "./Terraform"
    resource_group              = "Gafar-rg"
    location                    = "UK South"
    virtual_network             = "UK-vnet"
    address_space               = ["10.0.0.0/16"]
    subnet1                     = "Uk-subnet1"
    subnet2                     = "Uk-subnet2"
    nsg                         = "Uk-nsg"
    address_prefixes1           = ["10.0.1.0/24"]
    address_prefixes2           = ["10.0.2.0/24"]
    name                        = "UKrules"
    priority                    = 100
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    source_port_range           = "*"
    destination_port_range      = "*"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
    environment                 = "Dev"
}