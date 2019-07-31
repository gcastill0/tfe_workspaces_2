variable "workspaces" {
  description = "This is a test"

  default = [
    {
      "ws_name" = "bla1",
      "ws_repo" = "gcastill0/sandbox-aws"
    },
    {
      "ws_name" = "bla2",
      "ws_repo" = "gcastill0/sandbox-aws"
    },
  ]
}

variable "terraform_version" {
  description = "(Optional) The version of Terraform to use for the workspace."
  default     = "0.11.14"
}

variable "TFE_HOST" {
  description = "(Optional) The Terraform Enterprise hostname to connect to. Defaults to app.terraform.io. Can be overridden by setting the TFE_HOSTNAME environment variable."
}

variable "TFE_ORG_NAME" {
  description = "Desired name for workspace."
}

variable "TFE_TOKEN" {
  description = "(Required) A reference to your VCS repository in the format :org/:repo where :org and :repo refer to the organization and repository in your VCS provider."
}

variable "OAUTH_TOKEN_ID" {
  description = "(Required) Token ID of the VCS Connection (OAuth Conection Token) to use."
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "Desired name for workspace."
}

variable "AWS_ACCESS_KEY_ID" {
  description = "Desired name for workspace."
}
