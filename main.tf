resource "aws_dynamodb_table" "table" {
  name           = "${var.table_name}-${var.environment}"
  billing_mode   = var.billing_mode
  hash_key       = var.hash_key
  range_key      = var.range_key

  attribute {
    name = var.hash_key
    type = "S"
  }
  attribute {
    name = var.range_key
    type = "S"
  }

  dynamic "ttl"  {
    for_each = var.ttl
    content {
      attribute_name = ttl.value["attribute_name"]
      enabled        = ttl.value["enabled"]
    }
  }

  tags = {
    Name        = "${var.table_name}-${var.environment}"
    Environment = "dynamodb-${var.environment}"
  }
}

