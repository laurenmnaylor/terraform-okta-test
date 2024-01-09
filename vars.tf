variable "org_name" {
  type = string
}

variable "api_token" {
  type = string
}

output "token_value" {
  value = var.api_token
}

variable "base_url" {
  type = string
}

variable "env" {
  type = string
  default = "personal-test"
}
