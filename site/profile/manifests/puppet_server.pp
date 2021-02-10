# This is the puppet_server profile and is used to manage resources on your
# local puppet master.

class profile::puppet_server {
  contain rap_puppet_puppetserver

  # these puppet_authorization rules are required to allow the puppet ca calls to work for the updated cert cleanup script. 
  puppet_authorization::rule { 'puppetlabs cert status':
    match_request_path   => '/puppet-ca/v1/certificate_status',
    match_request_type   => 'path',
    match_request_method => ['get', 'put', 'delete'],
    allow                => ['puppet-master', extensions => { "pp_cli_auth" => "true"}],
    sort_order           => 500,
    path                 => '/etc/puppetlabs/puppetserver/conf.d/auth.conf',
  }

  puppet_authorization::rule { 'puppetlabs cert statuses':
    match_request_path   => '/puppet-ca/v1/certificate_statuses',
    match_request_type   => 'path',
    match_request_method => 'get',
    allow                => ['puppet-master', extensions => { "pp_cli_auth" => "true"}],
    sort_order           => 500,
    path                 => '/etc/puppetlabs/puppetserver/conf.d/auth.conf',
  }
}
