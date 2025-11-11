# HCPWaypoint-RepositoriesFactory
Code to provision and manage HCP Waypoint for Repositories Factory using Terraform code (IaC).

<!-- BEGIN_TF_DOCS -->
# HCP Waypoint Repositories Factory

Code which manages configuration and life-cycle of the HCP Waypoint Repositories Factory. It is designed to be used from a dedicated VCS-Driven Terraform workspace that would provision and manage the configuration using Terraform code (IaC).

## Permissions

### HCP Permissions

To manage the resources from that code, provide a Client ID and a Client Secret from a service principal key with `admin` permissions.

## Authentication

### HCP Authentication

The HCP provider requires a `Client ID` and a `Client Secret` from a service principal key in order to manage resources.

There are several ways to provide the required informations:

* Set the `client_id` and `client_secret` argument in the provider configuration. Use input variables.
* Set the `HCP_CLIENT_ID` and `HCP_CLIENT_SECRET` environment variables.

## Features

*

## Documentation

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.13.0)

- <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) (0.110.0)

- <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) (~>0.70)

## Modules

No modules.

## Required Inputs

The following input variables are required:

### <a name="input_organization"></a> [organization](#input\_organization)

Description: (Required) Name of the organization.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_module_name"></a> [module\_name](#input\_module\_name)

Description: (Optional) Name of the module.

Type: `string`

Default: `"repositoriesfactory"`

### <a name="input_module_provider"></a> [module\_provider](#input\_module\_provider)

Description: (Optional) Name of the module provider.

Type: `string`

Default: `"github"`

### <a name="input_project_name"></a> [project\_name](#input\_project\_name)

Description: (Required) Name of the Terraform Cloud/Enterprise project where the workspace created by the no-code is located.

Type: `string`

Default: `"GitHub Repositories Factory"`

### <a name="input_template_description"></a> [template\_description](#input\_template\_description)

Description: (Optional) A description of the Waypoint template, along with when and why it should be used, up to 500 characters

Type: `string`

Default: `null`

### <a name="input_template_labels"></a> [template\_labels](#input\_template\_labels)

Description: (Optional) Labels to assign to the Waypoint template.

Type: `list(string)`

Default:

```json
[
  "github",
  "repository"
]
```

### <a name="input_template_name"></a> [template\_name](#input\_template\_name)

Description: (Optional) Name of the Waypoint template.

Type: `string`

Default: `"GitHubRepository"`

### <a name="input_template_summary"></a> [template\_summary](#input\_template\_summary)

Description: (Optional) A brief description of the Waypoint template, up to 110 characters.

Type: `string`

Default: `"GitHub repository deployment."`

## Resources

The following resources are used by this module:

- [hcp_waypoint_template.this](https://registry.terraform.io/providers/hashicorp/hcp/0.110.0/docs/resources/waypoint_template) (resource)
- [tfe_project.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/project) (data source)
- [tfe_registry_module.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/registry_module) (data source)

## Outputs

No outputs.

<!-- markdownlint-enable -->
<!-- END_TF_DOCS -->