resource "okta_auth_server" "authorization_server" {
 audiences = ["my_aud"]
 name      = "My Authorization Server"
}

resource "okta_auth_server_policy" "auth_server_policy" {
 auth_server_id = okta_auth_server.authorization_server.id
 name = "My Policy"
 priority = 1
 description = "My Policy Description"
 client_whitelist = [var.client_id]
}