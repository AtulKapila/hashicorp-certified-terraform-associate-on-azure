#Terraform block

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}

# provider Block

provider "azurerm" {
    features {}
    subscription_id = "147a9116-97ba-481a-8921-c8e0b286b6c3"
  # Configuration options
}