## 3.2.1 (Unreleased)

### FIXES:

- Update path to rp-puppet-cloudwatch in Puppetfile. [TIOCE-289]
- Add rap-puppet-jenkins and jenkins modules to Puppetfile. [TIOCE-289]
- Upgrade version of Jenkins to 2.60.2-1.1 in jenkins_master.yaml. [TIOCE-289]
- Update path to rp-jenkinscontrol-skeleton in jenkins_master.yaml. [TIOCE-289]
- Remove encrypted ssh_private_key but add instructions how to create/encrypt and add one for the current account. [TIOCE-289]
- Update the list of plugins. [TIOCE-289]
- Monit health check was failing because check was written for debian. Default is now centos. Add correct code for centos. Also add notes for the correct debian code if needed. [TIOCE-289]
- Cloudwatch metric_data and metric_alarms default to example job names. Use job-dsl-seed instead since this is a real job and we need to monitor it. Also add notes for how to add additional jobs to be monitored. [TIOCE-289]

## 3.2.0 (18 April 2017)
- The site-local jenkins_master profile now includes support for watchdog monitoring of the jenkins service.
- The prod jenkins_master hiera role data file includes monit service check definitions for the `jenkinsmaster` service.
- The prod jenkins_master hiera role data file includes CloudWatch metric and alarm definitions to provide health monitoring of the jenkins service and jobs.

## 3.1.0 (21 February 2017)

### FIXES:

- The version of rap-puppet-cloudwatch has been bumped to 1.7.0 in the Puppetfile to take advantage of the added `alarm_name` parameter. [TIOCE-74]
- The default Puppet CloudWatch alarms defined in `hiera/instance_classification/prod/roles/puppet_server.yaml` now include the `alarm_name` parameter and interpolate `instance-id` to ensure uniqueness of the alarm. [TIOCE-74]

## 3.0.1 (31 January 2017)
- The monit service checks have been modified to use `systemctl restart` rather than `systemctl start` to resolve a bug that prevents the monitored daemons from restarting when the PID file is not properly removed. [TIOCE-39]
- A monit service check has been added for the puppet agent service. [TIOCE-39]

## 3.0.0 (30 January 2017)
- The site-local puppet_server profile now includes support for watchdog monitoring of critical puppet services. [TROTP-141]
- The prod puppet_server hiera role data file includes monit service check definitions for the `puppetserver` and `puppetdb` services. [TROTP-141]
- The prod puppet_server hiera role data file includes CloudWatch metric and alarm definitions to provide health monitoring of critical Puppet Server services. [TROTP-232]
- The [rap-puppet-cloudwatch](https://gitlab.et-scm.com/tio-rap-london/rap-puppet-cloudwatch) module is now included in the Puppetfile and included in the site-local puppet_server role. [TROTP-232]
- The prod puppet_server hiera role data file includes CloudWatch metric and alarm definitions to provide health monitoring of Puppet agent status and catalog run statistics. [TROTP-235]

## 2.1.0 (19 December 2016)

### IMPROVEMENTS:
- Upgraded PuppetDB version to 4.3.0-1 and upgraded all support packages to latest available. [TROTP-230]

## 2.0.0 (08 September 2016)

### IMPROVEMENTS:
- The site-local base profile now includes support for automated account provisioning. [TROTP-118]
- The site-local common hiera data file includes the `profile::base` profile and a default sudo configuration that permits members of privileged groups (adm, wheel) to execute privileged commands and switch to the root user without a password prompt. This mimics the behavior of the default cloud-init configured users (e.g. admin, ec2-user, etc). [TROTP-118]
- A new example hiera file `/hiera/instance_classification/prod/roles/account_provisioning.yaml` has been added with instructions on provisioning user accounts on instances. [TROTP-118]

## 1.0.0 (09 May 2016)

### INITIAL RELEASE
