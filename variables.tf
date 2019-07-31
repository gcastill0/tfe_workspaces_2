variable "workspaces" {
  description = "Using a tupple combination to describe a TFE Workspace name and a VCS repo name. ws_name is the name for workspace. ws_repo is the VCS repo in the format org_name/repo_name."

  default = [
    {
      "ws_name" = "test_1"
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
  description = "(Required) Name of the organization."
}

variable "TFE_TOKEN" {
  description = "(Required) A reference to your VCS repository in the format :org/:repo where :org and :repo refer to the organization and repository in your VCS provider."
}

variable "OAUTH_TOKEN_ID" {
  description = "(Required) Token ID of the VCS Connection (OAuth Conection Token) to use."
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "(Optional) This is the AWS secret key. It must be provided, but it can also be sourced from the AWS_SECRET_ACCESS_KEY environment variable, or via a shared credentials file if profile is specified."
}

variable "AWS_ACCESS_KEY_ID" {
  description = "(Optional) This is the AWS access key. It must be provided, but it can also be sourced from the AWS_ACCESS_KEY_ID environment variable, or via a shared credentials file if profile is specified."
}
