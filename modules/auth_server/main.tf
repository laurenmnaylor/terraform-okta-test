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

resource "okta_auth_server_policy" "auth_server_policy_6" {
 auth_server_id = data.okta_auth_server.as.id
 name = "My Policy 6"
 priority = 5
 description = "My Policy Description"
 client_whitelist = ["ALL_CLIENTS"]
}

resource "okta_auth_server_policy" "auth_server_policy_7" {
 auth_server_id = data.okta_auth_server.as.id
 name = "My Policy 7"
 priority = 0
 description = "My Policy Description"
 client_whitelist = ["ALL_CLIENTS"]
}