# This is the Puppetfile that defines the modules from the forge and other
# source code repositories that you want installed in the environment by r10k.
#
# NOTE: Puppetfiles and r10k do NOT include dependency resolution. You must
# make sure that you have every module needed for all of your specified modules
# to run.
#
# Please check the modules made available to you globally before adding modules
# here to reduce duplication.

# Specifies the forge endpoint to use when retrieving modules.
forge 'http://forge.puppetlabs.com'

#------------------------------------------------------------------------------
# Puppet Forge Modules
#------------------------------------------------------------------------------
# To install a specific version, and then keep the module at that version:
# mod 'puppetlabs/ntp', '4.1.2'
# ---
# To install the latest available version of a module, and then continue to
# update the module:
# mod 'puppetlabs/ntp', :latest

# Modules from the Puppet Forge
mod 'puppetlabs/concat', '6.2.0'               # Compatible Puppet >= 5.5.10 < 7.0.0
mod 'puppetlabs/stdlib', '4.25.1'              # Compatible Puppet >= 5.5.10 < 7.0.0 stdlib < 5.0.0 required by many other modules
mod 'puppetlabs/apt', '7.4.1'                  # Compatible Puppet >= 5.5.10 < 7.0.0
mod 'puppetlabs/puppetserver_gem', '1.1.1'     # Compatible Puppet >= 4.0.0  < 7.0.0
mod 'puppetlabs/inifile', '4.3.0'              # Compatible Puppet >= 5.5.10 < 7.0.0
mod 'puppetlabs/firewall', '2.3.0'             # Compatible Puppet >= 5.5.10 < 7.0.0
mod 'puppetlabs/accounts', '6.1.1'             # Compatible Puppet >= 5.5.10 < 7.0.0
mod 'puppetlabs/java', '6.2.0'                 # Compatible Puppet >= 5.5.10 < 7.0.0
mod 'puppetlabs/docker', '3.10.0'              # Compatible Puppet >= 5.5.10 < 7.0.0

# Community Forge Modules
mod 'puppet/collectd', '12.1.0'                # Compatible Puppet >= 5.5.8  < 7.0.0
mod 'puppet/archive', '4.5.0'                  # Compatible Puppet >= 5.5.8  < 7.0.0
mod 'puppet/hiera', '4.0.0'                    # Compatible Puppet >= 5.5.8  < 7.0.0

# Module required to allow the puppet ca calls to work for the updated cert cleanup script. Also entries needed in the site/profile/manifest/puppet_server.pp file
mod 'puppetlabs/puppet_authorization', '0.5.1' # Compatible Puppet >= 4.7.0  < 7.0.0

mod 'puppet/epel', '3.0.1'                     # Compatible Puppet >= 5.5.8  < 7.0.0
mod 'puppet/python', '4.1.1'                   # Compatible Puppet >= 5.5.8  < 7.0.0

# Upgraded version of saz/sudo requires removal of 'contain sudo::configs' in the site/profile/manifests/base.pp file
mod 'saz/sudo', '6.0.0'                        # Compatible Puppet >= 4

mod 'soli/monit', '2.0.1'                      # Compatible Puppet >= 3.0.0  < 6.0.0

#------------------------------------------------------------------------------
# Git Modules
#------------------------------------------------------------------------------
# To install the module and track the 'experimental_feature' branch:
# mod 'rap_puppet_puppetserver',
#  :git => 'ssh://github.com/elsevier-centraltechnology/rp-puppet-puppetserver.git',
#  :ref => 'experimental_feature'
# ---
# To install the module and pin to the 1.0.1 release tag (preferred method):

mod 'rap_puppet_puppetserver',
  :git => 'git@github.com:elsevier-centraltechnology/rp-puppet-puppetserver.git',
  :tag => '1.6.5'

mod 'rap_puppet_jenkins',
  :git => 'git@github.com:elsevier-centraltechnology/rp-puppet-jenkins.git',
  :tag => '3.3.0'
  
mod 'rtyler/jenkins',
  :git    => 'https://github.com/elconas/puppet-jenkins.git',
  :branch => 'fix_749'
