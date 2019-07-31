provider "tfe" {
  hostname = "${var.TFE_HOST}"
  token    = "${var.TFE_TOKEN}"
}

resource "tfe_workspace" "workspace" {
  count             = "${length(var.workspaces)}"
  name              = "${var.workspaces[count.index].ws_name}"
  organization      = "${var.TFE_ORG_NAME}"
  terraform_version = "${var.workspaces[count.index].tf_ver}"

  vcs_repo {
    identifier     = "${var.workspaces[count.index].ws_repo}"
    oauth_token_id = "${var.OAUTH_TOKEN_ID}"
  }
}

resource "tfe_variable" "aws_secret_access_key" {
  count        = "${length(var.workspaces)}"
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "${var.AWS_SECRET_ACCESS_KEY}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${element(tfe_workspace.workspace.*.id, count.index)}"
}

resource "tfe_variable" "aws_access_key_id" {
  count        = "${length(var.workspaces)}"
  key          = "AWS_ACCESS_KEY_ID"
  value        = "${var.AWS_ACCESS_KEY_ID}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${element(tfe_workspace.workspace.*.id, count.index)}"
}
