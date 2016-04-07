# This is the puppet_server role that is assigned to your local puppet master.
# This file should remain unchanged. Changes to your puppet master should be
# made in profile::puppet_server.

class role::puppet_server {
  include profile::base
  include profile::puppet_server
}
