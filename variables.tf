variable "fleet_apps_management_properties_lookup" {
  description = <<EOT
Map of fleet_apps_management_properties_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - scope
    - state
    - type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    display_name   = optional(string)
    scope          = optional(string)
    state          = optional(string)
    type           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

