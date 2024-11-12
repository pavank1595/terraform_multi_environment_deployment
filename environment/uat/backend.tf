terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform"
    storage_account_name = "strgtfbkndtfstate"
    container_name       = "terraform-tfstate-container"
    key                  = "uat.terraform.tfstate"

    # # These environment variables are passed in the Azure Pipeline
    # subscription_id = var.ARM_SUBSCRIPTION_ID
    # tenant_id 	= var.ARM_TENANT_ID
    # client_id 	= var.ARM_CLIENT_ID
    # client_secret 	= var.ARM_CLIENT_SECRET
  }
}
