# terraform {
#       backend "remote" {
#         # The name of your Terraform Cloud organization.
#         organization = "terraform-okta-test"
#
#         # The name of the Terraform Cloud workspace to store Terraform state files in.
#         workspaces {
#           name = "test-workspace"
#         }
#       }
# }

#resource "okta_auth_server" "authorization_server" {
#  audiences = ["my_aud"]
#  name      = "My Authorization Server"
#}
#
#resource "okta_auth_server_scope" "scope" {
#  auth_server_id = okta_auth_server.authorization_server.id
#  name = "MyScope"
#  description = "My Scope Description"
#}
#
#resource "okta_auth_server_claim" "claim" {
#  auth_server_id = okta_auth_server.authorization_server.id
#  name = "MyClaim"
#  value = "user.email"
#  claim_type = "IDENTITY"
#}
#
#resource "okta_auth_server_policy" "auth_server_policy" {
#  auth_server_id = okta_auth_server.authorization_server.id
#  name = "My Policy"
#  priority = 1
#  description = "My Policy Description"
#  client_whitelist = ["ALL_CLIENTS"]
#}
#
#resource "okta_auth_server_policy_rule" "auth_server_policy_rule" {
#  auth_server_id = okta_auth_server.authorization_server.id
#  name           = "My Policy Rule"
#  policy_id      = okta_auth_server_policy.auth_server_policy.id
#  priority       = 1
#  grant_type_whitelist = ["client_credentials"]
#}

#resource "okta_app_oauth" "test_app" {
#  label                      = "Terraform Test SPA"
#  type                       = "browser"
#  grant_types                = ["authorization_code"]
#  redirect_uris              = ["https://example.com/login/authorization_code/callback"]
#  consent_method             = "REQUIRED"
#  token_endpoint_auth_method = "none"
#  response_types             = ["code"]
#  post_logout_redirect_uris  = ["https://example.com", "https://example2.com"]
#}
#
# resource "okta_app_user_schema_property" "custom_app_profile" {
#   app_id = okta_app_oauth.test_app.id
#   index = "customPropertyNew"
#   title = "customPropertyNew"
#   type = "string"
# }

# resource "okta_profile_mapping" "mapping" {
#   source_id = okta_app_oauth.test_app.id
#   target_id = okta_app_oauth.test_app.id
#
#   mappings {
#     id = "nickname"
#     expression = "user.firstName"
#   }
#
#   mappings {
#     id = "customPropertyNew"
#     expression = "user.zipCode"
#   }
#
#   mappings {
#     id = "userName"
#     expression = "user.employeeNumber"
#   }
# }

# resource "okta_app_oauth" "m2m_application_2" {
#   label = "M2M Application 3"
#   type  = "service"
#   grant_types = ["client_credentials"]
#   consent_method = "REQUIRED"
#   issuer_mode = "DYNAMIC"
#   response_types = ["token"]
# }

# resource "okta_app_oauth" "spa_application" {
#   label = "SPA Application"
#   type = "browser"
#   consent_method = "REQUIRED"
#   grant_types = ["authorization_code"]
#   issuer_mode = "DYNAMIC"
#   post_logout_redirect_uris = ["http://localhost:8080"]
#   redirect_uris = ["http://localhost:8080/login/callback"]
#   response_types = ["code"]
#   token_endpoint_auth_method = "none"
#   wildcard_redirect = "SUBDOMAIN" #To disallow, use DISABLED
# }
# 
 resource "okta_group" "test_group_1" {
   name = "Test Group 1"
   description = "First Test Group"
   custom_profile_attributes = jsonencode({
     "test_attribute_1" = "Value1"
   })
 }

resource "okta_group_rule" "group_rule" {
  name = "GroupRule"
  group_assignments = [okta_group.test_group_1.id]
  expression_value = "String.startsWith(user.firstName,\"lauren\")"
}
# 
# resource "okta_user" "authserver_admin" {
#   first_name = "AuthServer"
#   last_name = "Admin"
#   login = "authServerAdmin@paraport.com"
#   email = "authServerAdmin@paraport.com"
# }
# 
# data "okta_user" "nicholas_giuliani" {
#   search {
#     name = "profile.firstName"
#     value = "Nicholas"
#   }
#   
#   search {
#     name = "profile.lastName"
#     value = "Giuliani"
#   }
#   
#   search {
#     name = "profile.login"
#     value = "nsgiuliani@paraport.com"
#   }
# }
# 
# resource "okta_group_memberships" "test_group_1_membership" {
#   group_id = okta_group.test_group_1.id
#   users = [
#    okta_user.authserver_admin.id,
#    data.okta_user.nicholas_giuliani.id 
#   ]
#   track_all_users = true
# }
# 
# resource "okta_group" "test_group_6" {
#   name = "Test Group 6"
#   description = "Sixth Test Group"
# }
#
# resource "okta_group_memberships" "test_group_2_membership" {
#   group_id = okta_group.test_group_2.id
#   users = [
#     okta_user.authserver_admin.id,
#     data.okta_user.nicholas_giuliani.id
#   ]
#   track_all_users = false
# }
#
# resource "okta_group" "test_group_3" {
#   name = "Test Group 3"
#   description = "Third Test Group"
# }
#
# resource "okta_group_memberships" "test_group_3_membership" {
#   group_id = okta_group.test_group_3.id
#   users = [
#     okta_user.authserver_admin.id,
#     data.okta_user.nicholas_giuliani.id
#   ]
#   track_all_users = true
# }
#
# resource "okta_app_group_assignments" "spa_application_group_memberships" {
#   app_id = okta_app_oauth.test_app.id
#   group {
#     id = okta_group.test_group_1.id
#     priority = 0
#   }
# }
 
 
 
