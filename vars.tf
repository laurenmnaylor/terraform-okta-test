variable "org_name" {
  type = string
}

output "org_value" {
  value = var.org_name
}

variable "api_token" {
  type = string
}

variable "test_value" {
  type = string
}

output "t_value" {
  value = nonsensitive(var.api_token)
}

output "test_value_value" {
  value = var.test_value
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
