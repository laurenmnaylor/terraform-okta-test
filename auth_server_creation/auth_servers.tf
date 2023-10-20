resource "okta_auth_server" "my_auth_server" {
  audiences   = ["api://example"]
  description = "My Example Auth Server"
  name        = "My Auth Server"
  issuer_mode = "ORG_URL"
  status      = "ACTIVE"
}
