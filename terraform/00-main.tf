terraform {
  backend "azurerm" {
    resource_group_name  = "rg-cacl-inf-tfstate"
    storage_account_name = "stgdeucecacltfstate"
    container_name       = "cnt-cloud-resume"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

}

provider "azurerm" {
  features {}

}







