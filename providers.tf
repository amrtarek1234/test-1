terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "terraform.github-actions"
    storage_account_name = "githubactoinstorage"
    container_name       = "tfstate"
  }
}
