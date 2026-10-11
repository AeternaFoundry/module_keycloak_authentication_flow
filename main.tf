resource "keycloak_authentication_flow" "authentication_flows" {
  for_each = var.authentication_flows

  alias       = each.value.alias
  realm_id    = each.value.realm_id
  copy_from   = each.value.copy_from
  description = each.value.description
  provider_id = each.value.provider_id
}

