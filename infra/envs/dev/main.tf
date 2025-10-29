terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.120"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg-gha-dev"        # name of the RG to create (demo)
  location = "UAE North"         # change region if needed
}
