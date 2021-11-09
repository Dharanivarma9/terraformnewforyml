provider "azurerm" {

   version = "~>2.0"

     subscription_id="8f14efb9-d2f2-4ef8-aeb8-afe76bf837bc"
     tenant_id="2350759d-5605-44a5-b4ba-76c6ac205e2b"
     client_id="0b463032-9a9f-4fb0-9a9d-0b25bcdfbe67"
  features {
  }
}

            # KEY(fixed-hash)      #name

#  Create an resource group
resource "azurerm_resource_group" "RS1" {

    name = "MyRG"
    location = "east us"
  
}

# Create an Vnet

resource "azurerm_virtual_network" "VN1" {

  name                = "virtualNetwork1"
  location            = azurerm_resource_group.RS1.location
  resource_group_name = azurerm_resource_group.RS1.name
  address_space       = ["10.0.0.0/16"]
  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }
  
}


