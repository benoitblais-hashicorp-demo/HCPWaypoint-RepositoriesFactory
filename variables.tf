variable "organization" {
  description = "(Required) Name of the organization."
  type        = string
  nullable    = false
}

variable "module_name" {
  description = "(Optional) Name of the module."
  type        = string
  default     = "repositoriesfactory"
  nullable    = false
}

variable "module_provider" {
  description = "(Optional) Name of the module provider."
  type        = string
  default     = "github"
  nullable    = false
}

variable "project_name" {
  description = "(Optional) Name of the Terraform Cloud/Enterprise project where the workspace created by the no-code is located."
  type        = string
  default     = "GitHub Repositories Factory"
  nullable    = false
}

variable "template_description" {
  description = "(Optional) A description of the Waypoint template, along with when and why it should be used, up to 500 characters."
  type        = string
  default     = "This HCP Waypoint template provisions a GitHub repository. You must provide an application name (unique, up to 50 characters, letters/numbers/dashes/underscores, ends with -repository), repository name, description, and topics (comma-separated without spaces)."

  validation {
    condition     = var.template_description == null ? true : length(var.template_description) <= 500
    error_message = "The template description must not exceed 500 characters."
  }
}

variable "template_labels" {
  description = "(Optional) Labels to assign to the Waypoint template."
  type        = list(string)
  default     = ["github", "repository"]
  nullable    = false
}

variable "template_name" {
  description = "(Optional) Name of the Waypoint template."
  type        = string
  default     = "GitHubRepository"
  nullable    = false
}

variable "template_summary" {
  description = "(Optional) A brief description of the Waypoint template, up to 64 characters."
  type        = string
  default     = "This template is use to provision a GitHub repository."

  validation {
    condition     = length(var.template_summary) <= 64
    error_message = "The template summary must not exceed 64 characters."
  }
}

# variable "template_readme_path" {
#   description = "(Optional) Path to the README markdown template file."
#   type        = string
#   default     = "./files/README.tpl"
# }

variable "template_variables" {
  description = <<EOF
  (Optional) The template_variables is a list of object that supports the following:
    name          : (Required) The name of the variable.
    variable_type : (Required) The type of the variable.
    options       : (Optional) A list of options for the variable, if applicable.
    user_editable : (Optional) Whether the variable is editable by the user creating an application.
  EOF
  type = list(object({
    name          = string
    variable_type = string
    options       = optional(list(string), null)
    user_editable = optional(bool, true)
  }))
  default = [
    {
      name          = "name"
      variable_type = "string"
    },
    {
      name          = "description"
      variable_type = "string"
    },
    {
      name          = "topics"
      variable_type = "string"
    }
  ]
}
