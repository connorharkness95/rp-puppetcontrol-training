# This is the puppet_server role that is assigned to your Jenkins Master.
# This file should remain unchanged. Changes to your Jenkins Master should be
# made in profile::jenkins_master.

class role::puppet_server {
  include profile::base
  include profile::jenkins_master
}
