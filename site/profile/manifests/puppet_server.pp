# This is the puppet_server profile and is used to manage resources on your
# local puppet master.

class profile::puppet_server {
  contain rap_puppet_puppetserver
}
