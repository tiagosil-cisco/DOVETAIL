data "aci_vmm_domain" "aci_vmm_vds" {
  provider_profile_dn = "uni/vmmp-VMware"
  name                = "DOVETAIL_VMM"
}