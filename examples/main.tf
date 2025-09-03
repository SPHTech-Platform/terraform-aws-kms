module "kms" {
  source = "../"

  key_description       = "Example KMS key"
  alias                 = "alias/kms-key"
  key_policy_statements = [data.aws_iam_policy_document.kms.json]
}
