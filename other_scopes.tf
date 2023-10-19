data "okta_auth_server" "as" {
   name = "example"
}

resource "okta_auth_server_scope" "example_scope_2" {
  auth_server_id   = data.okta_auth_server.as.id
  metadata_publish = "NO_CLIENTS"
  name             = "example Number Two"
  consent          = "IMPLICIT"
}
