output "key_arn" {
  description = "ARN of the key created"
  value       = aws_kms_key.key.arn
}

output "key_id" {
  description = "Created Key ID"
  value       = aws_kms_key.key.key_id
}
