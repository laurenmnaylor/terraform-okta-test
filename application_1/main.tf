terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "terraform-okta-test"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "application-1"
         }
       }
     }

data "okta_auth_server" "as" {
   name = "My Auth Server"
}

resource "okta_auth_server_scope" "example_scope_1" {
  auth_server_id   = data.okta_auth_server.as.id
  metadata_publish = "NO_CLIENTS"
  name             = "exampleScope1"
  consent          = "IMPLICIT"
}  
