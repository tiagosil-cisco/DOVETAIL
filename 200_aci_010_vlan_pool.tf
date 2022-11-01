resource "aci_vlan_pool" "VLAN_POOL" {
    for_each = var.aci_vlan_pools
        name  = each.value.name
        description = "From Terraform"
        alloc_mode  = each.value.alloc_mode

}


resource "aci_ranges" "range_1" {
    for_each = var.aci_vlan_pool_ranges
    vlan_pool_dn  = aci_vlan_pool.VLAN_POOL[each.value.pool].id
    description   = each.value.description
    from          = each.value.from
    to            = each.value.to
    alloc_mode    = each.value.alloc_mode
}