//ACI Infra Policies
// https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/vlan_pool
variable "aci_vlan_pools" {
  type = map(any)
  default = {
    pool1 = {
      name = "L3OUT_VLAN_POOL"
      alloc_mode  = "static"
    }
  }
}
variable "aci_vlan_pool_ranges" {
  type = map(any)
  default = {
    range1 = {
      from    = "vlan-100"
      to  = "vlan-120"
      description = "From Terraform"
      alloc_mode = "inherit"
      role  = "external"
      pool = "pool1"
    }
  }
}

// Tenants to be created
variable "tenants" {
  type = map(any)
  default = {
    DOVETAIL_ONPREM = {
      name        = "DOVETAIL_ONPREM"
      description = "This tenant is created by terraform"
      aci_subnet  = "10.3.0.0/16"
      aws_vpc_subnet = "10.4.0.0/16"
      azure_vnet_subnet = "10.5.0.0/16"
    }

  }
}

variable "vrfs" {
  type = map(any)
  default = {
    MAIN = {
      name    = "MAIN_VRF"
      tenant  = "DOVETAIL_ONPREM"
    }
  }
}

variable "DOVETAIL_SCHEMA" {
  type = map(any)
  default = {
    MAIN = {
      name  = "MAIN"

    }
  }
}

variable "bridge_domains" {
  type = map(any)
  default = {
    SERVERS = {
      name          = "SERVERS_BD"
      template      = "MAIN"
      tenant        = "DOVETAIL"
      application_profile = "WEB_ACCESS_AP"
      vrf           = "MAIN_VRF"
      arp_flood     = "no"
      ip_learning   = "yes"
      unicast_route = "true"
      aci_subnet    = "10.3.1.1/24"
      subnet_gw       = "10.3.1.1/24"
      dhcp_first    = "10.3.1.50"
      subnet_scope  = ["public","shared"]
      prefered      = "yes"
      aws_subnet    = "10.4.1.0/24"
      azure_subnet  = "10.5.1.0/24"
    },
  }
}


variable "APPLICATION_PROFILES" {
  type = map(any)
  default = {
    CLOUD_ACCESS = {
      name  = "CLOUD_ACCESS"
      template      = "MAIN"
    }
  }
}

