provider "aci" {
  # cisco-aci user name
  username = var.aci_user
  # cisco-aci password
  password = var.aci_password
  # cisco-aci url
  url      = var.aci_url
  insecure = true
}

variable "aci_user" {
  description = "ACI Username"
  type        = string
}

variable "aci_password" {
  description = "ACI Password"
  type        = string
}

variable "aci_url" {
  description = "ACI URL"
  type        = string
}