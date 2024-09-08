
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
     
    

    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    subscription_id      =  " ARM_SUBSCRIPTION_ID"
    resource_group_name  = "terraform.github-actions"
    storage_account_name = "githubactoinstorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
