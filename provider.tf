provider "okta" {
  org_name = var.org_name
  base_url = var.base_url
  client_id = "0oafdk1fs2p3S2ZmD5d7"
  private_key = var.api_token
  scopes = ["okta.authorizationServers.manage", "okta.authorizationServers.read", "okta.apps.manage", "okta.apps.read", "okta.policies.read", "okta.schemas.manage", "okta.schemas.read",
  "okta.profileMappings.manage", "okta.profileMappings.read", "okta.groups.read", "okta.groups.manage", "okta.users.read", "okta.users.manage"]
  # Terraform cloud is messing with pipeline's ability to pass token value. 
  # Hardcoding here because so I can test other things and my personal Okta account doesn't control anything and is just for testing terraform
#   api_token = "003Fzxrtmlf6zBuasEy_BEqhbaKjyNqPcM2sUGXuKZ"
}
