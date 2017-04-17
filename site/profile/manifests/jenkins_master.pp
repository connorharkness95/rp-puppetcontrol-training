# This is the jenkins_master profile and is used to manage resources on your
# local Jenkins Master.

class profile::jenkins_master {

  contain docker
  contain rap_puppet_jenkins
  contain cloudwatch
  
  exec { 'gpasswd -a jenkins docker ':
    path   => '/usr/bin:/usr/sbin:/bin',
    unless => '/usr/bin/groups jenkins |grep -q docker',
    require => Class['docker', 'rap_puppet_jenkins']
  }

  Class['docker'] -> Class['rap_puppet_jenkins']
  Apt::Source <| |> -> Package <| |>
  
  # If a hash of monit checks has been defined, install and enable watchdog
  # monitoring.
  $monit_checks = hiera_hash('profile::jenkins_master::monit_checks', undef)
  if $monit_checks {
    contain monit
    create_resources(monit::check, $monit_checks)
  }
}
