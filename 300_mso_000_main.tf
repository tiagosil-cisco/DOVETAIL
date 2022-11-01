provider "mso" {
    # cisco-mso user name
    username = var.mso_user
    # cisco-mso password
    password = var.mso_password
    # cisco-mso url
    url      = var.mso_url
    domain   = "local"
    insecure = true
    platform = "nd"
}

variable "mso_user" {
  description = "MSO Username"
  type        = string
}

variable "mso_password" {
  description = "MSO Password"
  type        = string
}

variable "mso_url" {
  description = "MSO URL"
  type        = string
}
/*
variable "capic_password" {
  description = "Cloud APIC password"
  type        = string
}
*/