# terraform block 
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = { 
        source = "hashicorp/azurerm"
        #version = "~> 4.14.0"
        version = ">=2.0.0, <2.60.0"
    }
  }
}

provider "azurerm" {
    features {}
  
}

# provider Blocks 
/*
  required_version = "~> 0.14.3" - Will fail
  required_version = "~> 0.14"   - Will fail  
  required_version = "= 0.14.4"  - Will fail
  required_version = ">= 0.13"   - will pass
  required_version = "= 1.0.0"   - will pass
  required_version = "1.0.0"     - will pass 
  required_version = ">= 1.0.0"   - will pass  */