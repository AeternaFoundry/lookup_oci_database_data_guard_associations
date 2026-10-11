variable "database_data_guard_associations_lookup" {
  description = <<EOT
Map of database_data_guard_associations_lookup, attributes below
Required:
    - database_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    database_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

