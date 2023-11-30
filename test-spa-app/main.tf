terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "terraform-okta-test"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "test-spa-app"
         }
       }
}

resource "okta_app_oauth" "test_app" {
  label                      = "Test SPA App 4"
  type                       = "browser"
  grant_types                = ["authorization_code"]
  redirect_uris              = ["https://example.com"]
  consent_method             = "REQUIRED"
  token_endpoint_auth_method = "none"
  response_types             = ["code"]
  post_logout_redirect_uris  = ["https://example.com", "https://example2.com"]
}

/**module "client_module" {
  source = "../modules/client_applications"
  org_name = var.org_name
  api_token = var.api_token
  base_url = var.base_url
  env = var.env
  envs_to_deploy = ["dev","qa"]
}**/
