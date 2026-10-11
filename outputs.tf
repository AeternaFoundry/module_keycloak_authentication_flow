output "authentication_flows_id" {
  description = "Map of id values across all authentication_flows, keyed the same as var.authentication_flows except keys with no id are omitted"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "authentication_flows_alias" {
  description = "Map of alias values across all authentication_flows, keyed the same as var.authentication_flows except keys with no alias are omitted"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "authentication_flows_copy_from" {
  description = "Map of copy_from values across all authentication_flows, keyed the same as var.authentication_flows except keys with no copy_from are omitted"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.copy_from if v.copy_from != null && length(v.copy_from) > 0 }
}
output "authentication_flows_description" {
  description = "Map of description values across all authentication_flows, keyed the same as var.authentication_flows except keys with no description are omitted"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.description if v.description != null && length(v.description) > 0 }
}
output "authentication_flows_provider_id" {
  description = "Map of provider_id values across all authentication_flows, keyed the same as var.authentication_flows except keys with no provider_id are omitted"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.provider_id if v.provider_id != null && length(v.provider_id) > 0 }
}
output "authentication_flows_realm_id" {
  description = "Map of realm_id values across all authentication_flows, keyed the same as var.authentication_flows except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}

