resource "azurerm_resource_group" "myrg1" {
    name = "myrg-1"
    location = "canadacentral"
}

resource "azurerm_resource_group" "myrg2" {
    name = "myrg-2"
    location = "West US"
    provider = azurerm.west-provider
}