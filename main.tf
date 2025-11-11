data "tfe_registry_module" "this" {
  organization    = var.organization
  name            = var.module_name
  module_provider = var.module_provider
}

data "tfe_project" "this" {
  name         = var.project_name
  organization = var.organization
}

resource "hcp_waypoint_template" "this" {
  name                            = var.template_name
  summary                         = var.template_summary
  terraform_project_id            = data.tfe_project.this.id
  terraform_no_code_module_source = data.tfe_registry_module.this.no_code_module_source
  terraform_no_code_module_id     = data.tfe_registry_module.this.no_code_module_id
  description                     = var.template_description
  labels                          = var.template_labels
  # readme_markdown_template        = fileexists(var.template_readme_path) ? file(var.template_readme_path) : null
  variable_options = var.template_variables

  lifecycle {
    ignore_changes = [ readme_markdown_template ]
  }
}

data "tfe_registry_module" "add_on_module" {
  organization    = var.organization
  name            = "workspacesfactory"
  module_provider = "tfe"
}

data "tfe_project" "add_on_project" {
  name         = "Terraform Workspaces Factory"
  organization = var.organization
}

resource "hcp_waypoint_add_on_definition" "this" {
  name                            = "HCPTerraformWorkspace"
  summary                         = "An add-on that provisions a HCP Terraform Workspace."
  description                     = "This add-on provisions a HCP Terraform Workspace."
  terraform_project_id            = data.tfe_project.add_on_project.id
  labels                          = ["hcp terraform", "workspace"]
  terraform_no_code_module_source = data.tfe_registry_module.add_on_module.no_code_module_source
  terraform_no_code_module_id     = data.tfe_registry_module.add_on_module.no_code_module_id
  variable_options = [
    {
      name          = "name"
      user_editable = true
      variable_type = "string"
    },
    {
      name          = "project_name"
      user_editable = true
      variable_type = "string"
    }
  ]
}