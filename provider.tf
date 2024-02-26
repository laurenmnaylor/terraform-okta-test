provider "okta" {
  org_name = var.org_name
  base_url = var.base_url
  # Terraform cloud is messing with pipeline's ability to pass token value. 
  # Hardcoding here because so I can test other things and my personal Okta account doesn't control anything and is just for testing terraform
  api_token = "00zwU-q7eTVKizfbDVEPzXcVKqHyAJIXWjNY5OaOit"
}
