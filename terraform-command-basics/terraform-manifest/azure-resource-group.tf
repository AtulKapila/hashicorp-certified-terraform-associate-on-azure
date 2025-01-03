# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in production
    }    
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "147a9116-97ba-481a-8921-c8e0b286b6c3"
}
# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "canadacentral"
  name = "my-demo-rg1"  
}