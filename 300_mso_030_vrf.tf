
resource "mso_schema_template_vrf" "vrf_obj" {
        for_each = var.vrfs
        schema_id     = mso_schema.schema_obj.id
        template      = each.key
        name          = each.value.name
        display_name  = each.value.name
    }

   