# Contains all classes and directives required to setup a Consul node.
class profile::consul {
  contain consul
  contain profile::consul::consul_acls
  contain profile::consul::consul_key_values
  contain profile::consul::create_dirs
  contain rap_puppet_consul

  file { '/usr/local/share/ca-certificates/coreengineering-ca.crt':
    ensure => present,
    source => '/etc/consul.d/tls/coreengineering-ca.pem',
    mode   => '0777',
    notify => Exec['update-ca'],
  }

  exec { 'update-ca':
    command      => '/usr/sbin/update-ca-certificates',
    refreshonly  => true,
  }

  Class['profile::consul::create_dirs'] ->
  Class['rap_puppet_consul'] ->
  Class['consul'] ->
  Class['profile::consul::consul_acls'] ->
  Class['profile::consul::consul_key_values'] ->
  File['/usr/local/share/ca-certificates/coreengineering-ca.crt']
}

# Provides the ability to create Consul key/value pairs from a hiera hash.
class profile::consul::consul_key_values {
  $key_values = hiera_hash('profile::consul::consul_key_values', undef)
  if $key_values {
    create_resources(consul_key_value, $key_values)
  }
}

# Provides the ability to create Consul ACLs from a hiera hash.
class profile::consul::consul_acls {
  $acls = hiera_hash('profile::consul::consul_acl_hash', undef)
  if $acls {
    create_resources(consul_acl, $acls)
  }
}

# Create pre-requisite directories.
class profile::consul::create_dirs {
  file { [ '/var/run/hashicorp/', '/var/run/hashicorp/consul']:
    ensure => 'directory',
    mode   => '0666',
  }
}
