resource "aws_dynamodb_table" "name" {
    name = var.aws_dynamodb_table_name
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "terra"

    attribute {
      name = "id"
      type = "S"
    }
}