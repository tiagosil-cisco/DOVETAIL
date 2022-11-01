//https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/attachable_access_entity_profile

resource "aci_attachable_access_entity_profile" "L3Out_AAEP" {
    name            =       "L3Out_AAEP"
    relation_infra_rs_dom_p =       [aci_l3_domain_profile.l3_domain.id]
}