resource "okta_app_oauth" "terraform_client" {
  label                      = "My Service"
  type                       = "service"
  grant_types                = ["client_credentials"]
}
