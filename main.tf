terraform {
  required_version  = ">= 0.12.0"

}

provider "azurerm" {

 # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version  = "=1.42.0"
  client_id = client_id
  subscription_id = subscription_id
  tenant_id = tenant_id
  client_secret = client_secret

}
