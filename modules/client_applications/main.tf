resource "okta_app_oauth" "terraform_client" {
  for_each = toset([])
  label                      = each.key
  type                       = "service"
  grant_types                = ["client_credentials"]
}
