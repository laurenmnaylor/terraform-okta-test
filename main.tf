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
 
 resource "okta_app_oauth" "m2m_application" {
   label = "M2M Application 2"
   type  = "service"
   grant_types = ["client_credentials"]
   consent_method = "REQUIRED"
   issuer_mode = "DYNAMIC"
   response_types = ["token"]
 }

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
# resource "okta_group" "test_group_1" {
#   name = "Test Group 1"
#   description = "First Test Group"
#   custom_profile_attributes = jsonencode({
#     "test_attribute_1" = "Value1"
#   })
# }
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
# resource "okta_group" "test_group_2" {
#   name = "Test Group 2"
#   description = "Second Test Group"
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
#   app_id = okta_app_oauth.spa_application.id
#   group {
#     id = okta_group.test_group_1.id
#     priority = 0
#   }
# }
 
 
 
