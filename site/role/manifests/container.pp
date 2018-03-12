# This role includes all profiles required to bootstrap a container server.
class role::container {
  include profile::base

  contain cloudwatch
  contain monit
  contain profile::consul
  contain profile::nomad

  # If a hash of monit checks has been defined, install and enable watchdog
  # monitoring.
  $monit_checks = hiera_hash('role::container::monit_checks', undef)
  if $monit_checks {
    create_resources(monit::check, $monit_checks)
  }

  Class['profile::consul'] -> Class['profile::nomad'] -> Class['monit']
}
