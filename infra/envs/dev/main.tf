terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.120"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" { features {} }

resource "azurerm_resource_group" "example" {
  name     = "rg-gha-dev"
  location = "UAE North"
}
