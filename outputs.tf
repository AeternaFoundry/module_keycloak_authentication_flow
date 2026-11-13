output "authentication_flows_id" {
  description = "Map of id values across all authentication_flows, keyed the same as var.authentication_flows"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.id }
}
output "authentication_flows_alias" {
  description = "Map of alias values across all authentication_flows, keyed the same as var.authentication_flows"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.alias }
}
output "authentication_flows_copy_from" {
  description = "Map of copy_from values across all authentication_flows, keyed the same as var.authentication_flows"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.copy_from }
}
output "authentication_flows_description" {
  description = "Map of description values across all authentication_flows, keyed the same as var.authentication_flows"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.description }
}
output "authentication_flows_provider_id" {
  description = "Map of provider_id values across all authentication_flows, keyed the same as var.authentication_flows"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.provider_id }
}
output "authentication_flows_realm_id" {
  description = "Map of realm_id values across all authentication_flows, keyed the same as var.authentication_flows"
  value       = { for k, v in keycloak_authentication_flow.authentication_flows : k => v.realm_id }
}

