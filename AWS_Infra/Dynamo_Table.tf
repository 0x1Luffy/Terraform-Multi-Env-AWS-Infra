resource "aws_dynamodb_table" "name" {
    name = "${var.env_name}-DynamoDB Table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "terra"

    attribute {
      name = "id"
      type = "S"
    }
}