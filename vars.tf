variable "org_name" {
  type = string
}

output "org_value" {
  value = var.org_name
}

variable "api_token" {
  type = string
}

variable "base_url" {
  type = string
}

variable "env" {
  type = string
  default = "personal-test"
}
