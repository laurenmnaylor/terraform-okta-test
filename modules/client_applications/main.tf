resource "okta_app_oauth" "terraform_client" {
  for_each = setintersection(toset(tolist(var.env)), toset(var.envs_to_deploy))
  label                      = each.key
  type                       = "service"
  grant_types                = ["client_credentials"]
}
