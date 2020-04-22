terraform {
  required_version  = ">= 0.12.0"

}

provider "azurerm" {

 # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version  = "=1.42.0"
  TF_CLIENT_ID = client_id
  TF_SUBSCRIPTION_ID = subscription_id
  TF_TENANT_ID = tenant_id
  TF_CLIENT_SECRET = client_secret

}
