output "database_data_guard_associations_lookup_id" {
  description = "Map of id values across all database_data_guard_associations_lookup, keyed the same as var.database_data_guard_associations_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_data_guard_associations.database_data_guard_associations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_data_guard_associations_lookup_data_guard_associations" {
  description = "Map of data_guard_associations values across all database_data_guard_associations_lookup, keyed the same as var.database_data_guard_associations_lookup except keys with no data_guard_associations are omitted"
  value       = { for k, v in data.oci_database_data_guard_associations.database_data_guard_associations_lookup : k => v.data_guard_associations if v.data_guard_associations != null && length(v.data_guard_associations) > 0 }
}
output "database_data_guard_associations_lookup_database_id" {
  description = "Map of database_id values across all database_data_guard_associations_lookup, keyed the same as var.database_data_guard_associations_lookup except keys with no database_id are omitted"
  value       = { for k, v in data.oci_database_data_guard_associations.database_data_guard_associations_lookup : k => v.database_id if v.database_id != null && length(v.database_id) > 0 }
}
output "database_data_guard_associations_lookup_filter" {
  description = "Map of filter values across all database_data_guard_associations_lookup, keyed the same as var.database_data_guard_associations_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_data_guard_associations.database_data_guard_associations_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

