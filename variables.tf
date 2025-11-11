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
  description = "(Required) Name of the Terraform Cloud/Enterprise project where the workspace created by the no-code is located."
  type        = string
  default     = "GitHub Repositories Factory"
  nullable    = false
}

variable "template_name" {
  description = "(Optional) Name of the Waypoint template."
  type        = string
  default     = "GitHubRepository"
  nullable    = false
}

variable "template_summary" {
  description = "(Optional) A brief description of the Waypoint template, up to 110 characters."
  type        = string
  default     = "GitHub repository deployment."

  validation {
    condition     = length(var.template_summary) <= 110
    error_message = "The template summary must not exceed 110 characters."
  }
}

variable "template_description" {
  description = "(Optional) A description of the Waypoint template, along with when and why it should be used, up to 500 characters"
  type        = string
  default     = null

  validation {
    condition     = length(var.template_description) <= 500
    error_message = "The template description must not exceed 500 characters."
  }
}

variable "template_labels" {
  description = "(Optional) Labels to assign to the Waypoint template."
  type        = list(string)
  default     = ["github", "repository"]
  nullable    = false
}