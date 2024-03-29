provider "okta" {
  org_name = var.org_name
  base_url = var.base_url
  
  
  client_id = "0oafdk1fs2p3S2ZmD5d7"
  private_key = var.api_token
  scopes = ["okta.clients.register", "okta.clients.manage", "okta.clients.read", "okta.apps.manage", "okta.apps.read", "okta.groups.manage", "okta.groups.read",
  "okta.appGrants.manage", "okta.appGrants.read", "okta.policies.manage", "okta.policies.read", "okta.authorizationServers.manage", "okta.authorizationServers.read",
  "okta.oauthIntegrations.manage", "okta.oauthIntegrations.read"]
  # Terraform cloud is messing with pipeline's ability to pass token value. 
  # Hardcoding here because so I can test other things and my personal Okta account doesn't control anything and is just for testing terraform
  # api_token = "00zwU-q7eTVKizfbDVEPzXcVKqHyAJIXWjNY5OaOit"
}
