# DynamoDB Table
output "aws_dynamodb_table_arn" {
  value       = aws_dynamodb_table.this.arn
  description = "The arn of the table"
}

output "aws_dynamodb_table_id" {
  value       = aws_dynamodb_table.this.id
  description = "The name of the table"
}

output "aws_dynamodb_table_stream_arn" {
  value       = aws_dynamodb_table.this.stream_arn
  description = " The ARN of the Table Stream. Only available when stream_enabled = true"
}

output "aws_dynamodb_table_stream_label" {
  value       = aws_dynamodb_table.this.stream_label
  description = "A timestamp, in ISO 8601 format, for this stream. Note that this timestamp is not a unique identifier for the stream on its own. However, the combination of AWS customer ID, table name and this field is guaranteed to be unique. It can be used for creating CloudWatch Alarms. Only available when stream_enabled = true"
}