resource "mso_schema" "schema_obj" {
    name          = "DOVETAIL_ONPREM_SCHEMA"
        
       dynamic "template" {
            for_each      = var.vrfs
            content {
                name          = template.key
                display_name  = template.key
                tenant_id     = mso_tenant.terraform_tenant[template.value.tenant].id
            }
            
        }

    }