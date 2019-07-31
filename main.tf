provider "tfe" {
  hostname = "${var.TFE_HOST}"
  token    = "${var.TFE_TOKEN}"
}

resource "tfe_workspace" "workspace" {
  name              = "${var.workspace_name}"
  organization      = "${var.TFE_ORG_NAME}"
  terraform_version = "${var.terraform_version}"

  vcs_repo {
    identifier     = "${var.vcs_repo}"
    oauth_token_id = "${var.OAUTH_TOKEN_ID}"
  }
}

resource "tfe_variable" "aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "${var.AWS_SECRET_ACCESS_KEY}"
  category     = "env"
  workspace_id = "${tfe_workspace.workspace.id}"
}

resource "tfe_variable" "aws_access_key_id" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = "${var.AWS_ACCESS_KEY_ID}"
  category     = "env"
  workspace_id = "${tfe_workspace.workspace.id}"
}
