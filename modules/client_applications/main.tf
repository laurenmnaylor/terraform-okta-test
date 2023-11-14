resource "okta_app_oauth" "terraform_client" {
  for_each = toset(["Test Module Client"])
  label                      = each.key
  type                       = "service"
  grant_types                = ["client_credentials"]
}
