# terraform-aws-iam-role-intelligentdiscovery-security-audit
This module is inteded for quicly deploying the needed role for Intelligent Discovery to your AWS infrastructure.


## Requirements
## Providers

| Name | Version |
|------|---------|
| aws | >= 3.10.0, < 4.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| account\_id | AWS Account ID of Intelligent Discovery service | `string` | n/a | yes |
| def\_tags | A map of default tags to add to all resources | `map` | <pre>{<br>  "CostCenter": "NOT_DEFINED",<br>  "Terraform": "true"<br>}</pre> | no |
| external\_id | External ID used by Intelligent Discovery service | `string` | n/a | yes |
| tags | A map of additional tags to add to all resources | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| intelligentdiscovery\_iam\_role | Intelligent Discovery Role name for IAM integration |
| intelligentdiscovery\_iam\_role\_arn | Intelligent Discovery Role ARN for IAM integration |

