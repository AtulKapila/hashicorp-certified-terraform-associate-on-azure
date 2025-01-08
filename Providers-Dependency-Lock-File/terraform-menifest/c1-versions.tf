terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = "1.44.0"
      version = ">= 2.0" # Commented for Dependency Lock File Demo
      
    }
    random = {
     source = "hashicorp/random"
     version = ">= 3.0"
    }
  }
}

provider "azurerm" {
   features {}  # Commented for Dependency Lock File Demo
   subscription_id = "147a9116-97ba-481a-8921-c8e0b286b6c3"
}