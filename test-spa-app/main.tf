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

module "client_module" {
  source = "../modules/client_applications"
  org_name = var.org_name
  api_token = var.api_token
  base_url = var.base_url
  env = var.env
  envs_to_deploy = ["dev","qa"]
}
