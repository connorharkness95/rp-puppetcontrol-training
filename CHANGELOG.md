## 2.1.0 (Unreleased)

### IMPROVEMENTS:
- Upgraded PuppetDB version to 4.3.0-1 and upgraded all support packages to latest available. [TROTP-230]

## 2.0.0 (08 September 2016)

### IMPROVEMENTS:
- The site-local base profile now includes support for automated account provisioning. [TROTP-118]
- The site-local common hiera data file includes the `profile::base` profile and a default sudo configuration that permits members of privileged groups (adm, wheel) to execute privileged commands and switch to the root user without a password prompt. This mimics the behavior of the default cloud-init configured users (e.g. admin, ec2-user, etc). [TROTP-118]
- A new example hiera file `/hiera/instance_classification/prod/roles/account_provisioning.yaml` has been added with instructions on provisioning user accounts on instances. [TROTP-118]

## 1.0.0 (09 May 2016)

### INITIAL RELEASE
