variable "iam_auth_account_id" {
  default = "11223344556677"
}

variable "iam_account_environemnt" {
  description = "needs to be on of: prod, pre-prod, backup, shared-services"
  default = "dev"
}

variable "iam_roles" {
  type = map(object({
    role_name = string
  }))
}

variable "iam_role_policies" {
  type = map(object({
    policy_name = string
    role_id = string
    file_name = string   

  }))
}