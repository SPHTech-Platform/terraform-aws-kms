variable "key_description" {
  description = "Textual description on the key"
  type        = string
  default     = ""
}

variable "alias" {
  description = "Alias for the created key. Set to `null` or empty to not create one"
  type        = string
  default     = "alias/terraform"
}

variable "tags" {
  description = "Tags for resoruces"
  type        = map(string)
  default     = {}
}

variable "key_policy_statements" {
  description = "Additional statements for the key policies."
  type        = list(string)
  default     = []
}

variable "deletion_window_in_days" {
  description = "Number of days before key is permanently deleted"
  type        = number
  default     = 30
}

variable "enable_key_rotation" {
  description = "Enable KMS Key Rotation"
  type        = bool
  default     = true
}
