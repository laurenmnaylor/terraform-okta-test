 terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "terraform-okta-test"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "test-workspace"
         }
       }
 }

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
   label = "M2M Application"
   type  = "service"
   grant_types = ["client_credentials"]
   consent_method = "REQUIRED"
   issuer_mode = "DYNAMIC"
   response_types = ["token"]
 }

 resource "okta_app_oauth" "spa_application" {
   label = "SPA Application 2"
   type = "browser"
   consent_method = "REQUIRED"
   grant_types = ["authorization_code"]
   issuer_mode = "DYNAMIC"
   post_logout_redirect_uris = ["http://localhost:8080"]
   redirect_uris = ["http://localhost:8080/login/callback"]
   response_types = ["code"]
   token_endpoint_auth_method = "none"
   wildcard_redirect = "SUBDOMAIN" #To disallow, use DISABLED
 }
 
 
