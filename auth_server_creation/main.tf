terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "terraform-okta-test"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "auth-servers"
         }
       }
     }


# resource "okta_auth_server" "my_auth_server" {
#   audiences   = ["api://example"]
#   description = "My Example Auth Server"
#   name        = "My Auth Server"
#   issuer_mode = "ORG_URL"
#   status      = "ACTIVE"
# }
