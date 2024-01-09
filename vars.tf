variable "org_name" {
  type = string
}

output "org_value" {
  value = var.org_name
}

variable "api_token" {
  type = string
}

output "t_value" {
  value = var.api_token
}

variable "base_url" {
  type = string
}

output "url_value" {
  value = var.base_url
}

variable "env" {
  type = string
  default = "personal-test"
}
