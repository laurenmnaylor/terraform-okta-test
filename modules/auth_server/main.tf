terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "4.8.0"
    }
  }
}

# resource "okta_auth_server" "authorization_server" {
#  audiences = ["my_aud"]
#  name      = "My Authorization Server"
# }

data "okta_auth_server" "as" {
   name = "My Authorization Server"
}

# resource "okta_auth_server_policy" "auth_server_policy" {
#  auth_server_id = okta_auth_server.authorization_server.id
#  name = "My Policy"
#  priority = 1
#  description = "My Policy Description"
#  client_whitelist = [var.client_app_id]
# }
#
# resource "okta_auth_server_policy" "auth_server_policy_2" {
#  auth_server_id = okta_auth_server.authorization_server.id
#  name = "My Policy 2"
#  priority = 1
#  description = "My Policy Description"
#  client_whitelist = ["ALL_CLIENTS"]
# }

resource "okta_auth_server_policy" "auth_server_policy_4" {
 auth_server_id = data.okta_auth_server.as.id
 name = "My Policy 4"
 priority = 10
 description = "My Policy Description"
 client_whitelist = ["ALL_CLIENTS"]
}

resource "okta_auth_server_policy" "auth_server_policy_5" {
 auth_server_id = data.okta_auth_server.as.id
 name = "My Policy 5"
 priority = 10
 description = "My Policy Description"
 client_whitelist = ["ALL_CLIENTS"]
}