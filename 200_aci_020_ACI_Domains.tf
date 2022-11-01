
//https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/physical_domain
resource "aci_physical_domain" "aci_phys_domain" {
    name = "L3Out_Phys_Dom"
    relation_infra_rs_vlan_ns = aci_vlan_pool.VLAN_POOL["pool1"].id
}

resource "aci_l3_domain_profile" "l3_domain" {
    name = "L3Out_Domain_prof"
}