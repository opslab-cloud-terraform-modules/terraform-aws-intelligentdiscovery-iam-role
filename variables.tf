variable "account_id" {
  type        = string
  description = "AWS Account ID of Intelligent Discovery service"
}

variable "external_id" {
  type        = string
  description = "External ID used by Intelligent Discovery service"
}

variable "tags" {
  description = "A map of additional tags to add to all resources"
  default     = {}
}

variable "def_tags" {
  description = "A map of default tags to add to all resources"

  default = {
    "Terraform"  = "true"
    "CostCenter" = "NOT_DEFINED"
  }
}

