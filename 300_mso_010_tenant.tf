data "mso_user" "schema_username" {
  username = "dovetail"
}

resource "mso_tenant" "terraform_tenant" {
    for_each    = var.tenants
    name         = each.key
    display_name = each.value.name
    description  = each.value.description
    user_associations {
      user_id = data.mso_user.schema_username.id
    }
}