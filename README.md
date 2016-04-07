# rap-puppetcontrol-skeleton

## Overview

This repository provides a template Puppet control repository that can be used
with r10k, hiera and puppet server.

Primary components provided include:
- An environment configuration file that correctly implements:
  * A site directory that contains roles and profiles for your environment.
  * Configuration version based on git commit ID.
- Basic example of roles/profiles code including roles/profiles required for puppet server bootstrapping and management.
- Example hiera directory structure with pre-created common, example and puppet_server data files.
- An r10k Puppetfile for managing deployment of Puppet modules within your environment.

## Dependencies
This control repository should be used in conjunction with a puppet server deployed using TIO standards.

See [rap-terraform-puppetserver](https://gitlab.et-scm.com/tio/rap-terraform-puppetserver) for details about deploying a new Puppet Server.

## Usage
