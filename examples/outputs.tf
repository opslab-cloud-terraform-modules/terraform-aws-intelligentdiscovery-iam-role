output "intelligentdiscovery_iam_role" {
  description = "Role name for IAM integration"
  value       = module.intelligentdiscovery_integration.intelligentdiscovery_iam_role
}

output "intelligentdiscovery_iam_role_arn" {
  description = "Role ARN for IAM integration"
  value       = module.intelligentdiscovery_integration.intelligentdiscovery_iam_role_arn
}


