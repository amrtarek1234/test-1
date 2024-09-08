terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
      subscription_id   = ${{secrets.AZURE_SUBSCRIPTION_ID}}
      tenant_id         = ${{secrets.AZURE_AD_TENANT_ID}}
      client_id         = ${{secrets.AZURE_AD_CLIENT_ID}}
      client_secret     = ${{secrets.AZURE_AD_CLIENT_SECRET}}

    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "terraform.github-actions"
    storage_account_name = "githubactoinstorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}
