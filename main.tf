locals {
  account_id = data.aws_caller_identity.current.account_id
}

resource "aws_kms_key" "key" {
  description             = var.key_description
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = var.enable_key_rotation
  policy                  = data.aws_iam_policy_document.combined_key_policy.json

  tags = var.tags
}

resource "aws_kms_alias" "key" {
  count = var.alias != null && var.alias != "" ? 1 : 0

  name          = var.alias
  target_key_id = aws_kms_key.key.key_id
}
