resource "azurerm_virtual_network" "myvirtualnetwork1" {
    name = "myvirtualnetwork-1"
    location = "canadacentral"
    resource_group_name = azurerm_resource_group.myrg1.name
    address_space = ["10.0.0.0/16"]

    tags = {
      name ="myvirtualnetwork-1"
      environment ="Dev"
    }
}

resource "azurerm_subnet" "mysubnet1" {
    name = "mysubnet-1"
    resource_group_name = azurerm_resource_group.myrg1.name
    virtual_network_name = azurerm_virtual_network.myvirtualnetwork1.name
    address_prefixes = ["10.0.2.0/24"]
}
resource "azurerm_public_ip" "mypublicip1" {
    name = "mypublicip-1"
    resource_group_name = azurerm_resource_group.myrg1.name
    location = azurerm_resource_group.myrg1.location
    allocation_method = "Static"
    domain_name_label = "app1-vm-${random_string.myrandom.id}"

    depends_on = [ 
      azurerm_virtual_network.myvirtualnetwork1,
      azurerm_subnet.mysubnet1
     ]
    tags = {
      environment = "Dev"
    }
}

resource "azurerm_network_interface" "myvmnic" {
    name = "vmnic-1"
    resource_group_name = azurerm_resource_group.myrg1.name
    location = azurerm_resource_group.myrg1.location
    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.mysubnet1.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = azurerm_public_ip.mypublicip1.id
    }
}