terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.81.0"
        }
        random = {
            source  = "hashicorp/random"
            version = "~> 3.6"
        }
    }
}

provider "azurerm" {
    features {}
    skip_provider_registration = true
}