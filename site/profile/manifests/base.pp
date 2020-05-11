# This is the base profile class and should include components that will be
# managed across all nodes in the environment. All roles should include this
# profile.

class profile::base {
  # If an accounts::users hash has been defined in hiera, then enable user
  # and sudo management.
  $accounts = hiera_hash('accounts::users', undef)
  if $accounts {
    contain sudo

    create_resources('accounts::user', $accounts)
  }
}
