variable "authentication_flows" {
  description = <<EOT
Map of authentication_flows, attributes below
Required:
    - alias
    - realm_id
Optional:
    - copy_from
    - description
    - provider_id
EOT

  type = map(object({
    alias       = string
    realm_id    = string
    copy_from   = optional(string)
    description = optional(string)
    provider_id = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.authentication_flows : (
        v.provider_id == null || (contains(["basic-flow", "client-flow"], v.provider_id))
      )
    ])
    error_message = "must be one of: \"basic-flow\", \"client-flow\""
  }
}

