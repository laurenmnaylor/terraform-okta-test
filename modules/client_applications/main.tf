terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "4.8.0"
    }
  }
}

resource "okta_app_oauth" "terraform_client" {
  label                      = "My Service"
  type                       = "service"
  grant_types                = ["client_credentials"]
}
