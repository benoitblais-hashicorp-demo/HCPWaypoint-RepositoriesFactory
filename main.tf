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
  description                     = var.template_description
  terraform_project_id            = data.tfe_project.this.id
  labels                          = var.template_labels
  terraform_no_code_module_source = data.tfe_registry_module.this.no_code_module_source
  terraform_no_code_module_id     = data.tfe_registry_module.this.no_code_module_id
}