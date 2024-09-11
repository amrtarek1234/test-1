resource "azurerm_resource_group" "rg" {

  name     = "test-branch00"
  location =  "West Europe"
}
resource "azurerm_virtual_network" "webserver_vnet" {
  name                = "vnetwork"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "webserver_subnet" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.webserver_vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

