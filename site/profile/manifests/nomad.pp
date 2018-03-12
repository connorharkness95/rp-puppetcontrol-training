# Contains all classes and directives required to setup a Nomad cluster node.
class profile::nomad {
  contain nomad
  contain rap_puppet_nomad

  Class['rap_puppet_nomad'] ->
  Class['nomad']
}
