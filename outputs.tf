output "intelligentdiscovery_iam_role" {
  description = "Intelligent Discovery Role name for IAM integration"
  value       = aws_iam_role.intelligentdiscovery_integration_role.id
}

output "intelligentdiscovery_iam_role_arn" {
  description = "Intelligent Discovery Role ARN for IAM integration"
  value       = aws_iam_role.intelligentdiscovery_integration_role.arn
}

