# GitHub Repository Template

This HCP Waypoint template is use to provision a GitHub repository.

When using this template to create a repository, you must complete the information as indicated below.

## Configuration settings

### Application name

Application name is uneditable after creation and must be unique. It can be up to 50 characters and can only include letters, numbers, dashes, and underscores.

> It must be the same name as the repository name and finished with `-repository`.

## Input variables

### name

Description: The name of the repository.
Type: `string`

### description

Description: A description of the repository.
Type: `string`

### topics
Description: The list of topics of the repository (comma separated whithout space)."
Type: `string`

## Outputs

Under the `Outputs` section, the following information will be available:

### full_name

Description: A string of the form \"orgname/reponame\".

### git_clone_url

Description: URL that can be provided to git clone to clone the repository anonymously via the git protocol.

### html_url

Description: URL to the repository on the web.

### http_clone_url

Description: URL that can be provided to git clone to clone the repository via HTTPS.

### repo_id

Description: GitHub ID for the repository.


### ssh_clone_url

Description: URL that can be provided to git clone to clone the repository via SSH.

### svn_url

Description: URL that can be provided to svn checkout to check out the repository via GitHub's Subversion protocol emulation.
