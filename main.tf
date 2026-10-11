data "oci_fleet_apps_management_properties" "fleet_apps_management_properties_lookup" {
  for_each = var.fleet_apps_management_properties_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  scope          = each.value.scope
  state          = each.value.state
  type           = each.value.type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

