# GitHub Repository Template

This HCP Waypoint template is use to provision a GitHub repository.

## Overview

This template provisions a GitHub Repository using a HashiCorp Terraform no-code module. It is designed to help developers quickly deploy a GitHub Repository within the designated HCP project.

### Features
*   Create and manage repository within your GitHub organization.
*   Configure branch protection for repository.

## Usage

Instructions on how to use the template within the HCP Waypoint UI to create an application.

1.  Navigate to the **Templates** section in your HCP Waypoint dashboard.
2.  Select the **GitHubRepository** template.
3.  Follow the prompts to configure the application.

## Configure settings
*   `Application name`: Must be unique. It can be up to 50 characters and can only include letters, numbers, dashes, and underscores. It must be the same name as the repository name and finished with `-repository`.

### Required Inputs
*   `name` (string): The name of the repository.
*   `description` (string): A description of the repository.
*   `topics` (string): The list of topics of the repository (comma separated).

## Provisioned Resources

An overview of the main resources that will be created when an application is generated from this template.

*   `GitHub Repository`: A GitHub repository following the enterprise best practices for the configuraiton.
*   `Branch Protection`: A branch protection rule for the `main` branch.
