terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        #version = "~> 4.14.0"
        version = ">=2.0.0"
    }
    random = {
        source = "hashicorp/random"
        version = ">=3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "147a9116-97ba-481a-8921-c8e0b286b6c3"
}

