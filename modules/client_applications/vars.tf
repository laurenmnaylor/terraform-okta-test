variable "org_name" {
  type = string
}

variable "api_token" {
  type = string
}

variable "base_url" {
  type = string
}

variable "env" {
  type = string
}

variable "envs_to_deploy" {
  type = list(string)
}
