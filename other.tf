module "my_auth_server" {
  source = "./modules/auth_server"
#   client_app_id = module.my_service_application.id
}