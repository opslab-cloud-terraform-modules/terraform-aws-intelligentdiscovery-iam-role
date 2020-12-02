module "intelligentdiscovery_integration" {
  source = "git@github.com:opslab-cloud/terraform-aws-iam-role-intelligentdiscovery-security-audit"

  account_id  = "123456789012"
  external_id = "bkasdjflkadf-badfkaljdf-adsfasdfwe-gagsadgsadg"

  tags {
    "CostCenter"  = "OpsLab-Cloud"
    "Environment" = "lab"
  }
}
