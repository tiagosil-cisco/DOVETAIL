resource "mso_schema_template_anp" "app_profiles" {
  for_each  = var.APPLICATION_PROFILES
  schema_id = mso_schema.schema_obj.id
  template  = each.value.template
  name      = each.value.name
  display_name  = each.value.name
}