# This is the site manifest for your environment. By default, all nodes
# retrieve their class assignments from hiera.  If you need to override this
# behavior, you can create a new node declaration here.  Please note, if you
# specify an explicit node definition in this file, hiera class assignment is
# ignored.

node default {
  hiera_include(classes)
}
