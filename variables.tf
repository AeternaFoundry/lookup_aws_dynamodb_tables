variable "dynamodb_tables_lookup" {
  description = <<EOT
Map of dynamodb_tables_lookup, attributes below
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
  }))
}

