data "aws_dynamodb_tables" "dynamodb_tables_lookup" {
  for_each = var.dynamodb_tables_lookup

  region = each.value.region
}

