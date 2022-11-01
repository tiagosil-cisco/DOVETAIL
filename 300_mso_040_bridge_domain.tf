resource "mso_schema_template_bd" "bd_obj" {
    depends_on = [
      mso_schema_template_vrf.vrf_obj
    ]
        for_each = var.bridge_domains
        schema_id              = mso_schema.schema_obj.id
        template_name          = each.value.template
        name                   = each.value.name
        display_name           = each.value.name
        vrf_name               = each.value.vrf
        layer2_unknown_unicast = "proxy"
        layer2_stretch         = true
        unicast_routing        = each.value.unicast_route
    }


resource "mso_schema_template_bd_subnet" "bdsub" {
    for_each = var.bridge_domains
    schema_id = mso_schema.schema_obj.id
    template_name = each.value.template
    bd_name = mso_schema_template_bd.bd_obj[each.key].name
    ip = each.value.aci_subnet
    scope = "public"
    description = "Description for the subnet"
    shared = true
    no_default_gateway = false
    querier = true
}