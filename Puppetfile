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

mod 'puppetlabs-concat'
mod 'puppetlabs-stdlib'
mod 'puppetlabs/apt'
mod 'puppetlabs/puppetserver_gem'
mod 'puppetlabs/inifile'
mod 'puppetlabs/firewall', '1.12.0'
mod 'puppetlabs/accounts', '1.0.0'
mod 'puppetlabs/java'
mod 'puppetlabs/git'
mod 'puppetlabs/docker', '3.4.0'

# Community Forge Modules
mod 'puppet/collectd'
mod 'puppet/archive'
mod 'hunner/hiera'
mod 'stahnma/epel'
mod 'stankevich/python'
mod 'saz/sudo', '6.0.0'
mod 'soli/monit', '1.2.0'
mod 'AlexCline/dirtree', '0.2.1'

#------------------------------------------------------------------------------
# Git Modules
#------------------------------------------------------------------------------
# To install the module and track the 'experimental_feature' branch:
# mod 'rap_puppet_puppetserver',
#  :git => 'ssh://gitlab.et-scm.com/tio/rap-puppet-puppetserver.git',
#  :ref => 'experimental_feature'
# ---
# To install the module and pin to the 1.0.1 release tag (preferred method):

mod 'rap_puppet_puppetserver',
  :git => 'ssh://gitlab.et-scm.com/elsevier-core-engineering/rp-puppet-puppetserver.git',
  :tag => '1.5.1'

mod 'rap_puppet_jenkins',
  :git => 'ssh://gitlab.et-scm.com/elsevier-core-engineering/rp-puppet-jenkins.git',
  :tag => '2.1.1'
  
mod 'rtyler/jenkins',
  :git    => 'https://github.com/elconas/puppet-jenkins.git',
  :branch => 'fix_749'
