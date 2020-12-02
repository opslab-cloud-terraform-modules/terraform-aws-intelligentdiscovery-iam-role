data "aws_iam_policy_document" "intelligentdiscovery_iam_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.account_id}:root"]
    }
    condition {
      test     = "StringEquals"
      variable = "sts:ExternalId"
      values   = [var.external_id]
    }
  }
}

resource "aws_iam_role" "intelligentdiscovery_integration_role" {
  name               = "IntelligentDiscovery-Security-Audit"
  description        = "This allows Intelligent Discovery to audit for security compliance"
  assume_role_policy = data.aws_iam_policy_document.intelligentdiscovery_iam_assume_role_policy.json
  tags               = merge(var.def_tags, var.tags)
}

resource "aws_iam_role_policy_attachment" "intelligentdiscovery_iam_role_readonlyaccess" {
  role       = aws_iam_role.intelligentdiscovery_integration_role.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

