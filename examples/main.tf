module "kms" {
  source = "../"

  key_description       = "Example KMS key"
  alias                 = "alias/kms-key"
  key_policy_statements = [data.aws_iam_policy_document.kms.json]
}

module "kms_us_east_1" {
  source = "../"

  region                = "us-east-1"
  key_description       = "Example KMS key in us-east-1 region"
  alias                 = "alias/kms-key-us-east-1"
  key_policy_statements = [data.aws_iam_policy_document.kms.json]
}
