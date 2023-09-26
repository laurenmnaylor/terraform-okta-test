resource "okta_app_oauth" "test_app" {
  label                      = "Terraform Test SPA"
  type                       = "browser"
  grant_types                = ["authorization_code"]
  redirect_uris              = ["https://example.com/login/authorization_code/callback"]
  consent_method             = "REQUIRED"
  token_endpoint_auth_method = "none"
  response_types             = ["code"]
  post_logout_redirect_uris  = ["https://example.com", "https://example2.com"]
}