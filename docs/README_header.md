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
