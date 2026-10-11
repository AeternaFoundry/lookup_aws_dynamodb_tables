output "dynamodb_tables_lookup_names" {
  description = "Map of names values across all dynamodb_tables_lookup, keyed the same as var.dynamodb_tables_lookup"
  value       = { for k, v in data.aws_dynamodb_tables.dynamodb_tables_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "dynamodb_tables_lookup_region" {
  description = "Map of region values across all dynamodb_tables_lookup, keyed the same as var.dynamodb_tables_lookup"
  value       = { for k, v in data.aws_dynamodb_tables.dynamodb_tables_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

