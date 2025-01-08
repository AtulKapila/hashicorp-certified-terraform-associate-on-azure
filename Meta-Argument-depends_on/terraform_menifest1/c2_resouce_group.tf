resource "azurerm_resource_group" "myrg1" {
    name = "myrg-1"
    location = "canadacentral"
}

resource "random_string" "myrandom" {
  length = 6
  upper = false
  special = false
}