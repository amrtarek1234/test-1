
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
 
    

    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    subscription_id      =  " 62b49203-a89e-435c-8549-09b74831638f"
    resource_group_name  = "gitaction-test"
    storage_account_name = "githubactoinstorage"
    container_name       = "tfstate"
    use_azuread_auth=true
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}
