data "oci_database_data_guard_associations" "database_data_guard_associations_lookup" {
  for_each = var.database_data_guard_associations_lookup

  database_id = each.value.database_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

