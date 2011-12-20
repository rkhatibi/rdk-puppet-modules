class glusterfs::params {

# Gluster specific params

  $mountdir = $::operatingsystem ? {
    default => '/glusters',
  }

# MODULES INTERNAL VARIABLES
# (Modify only to adapt to unsupported OSes)
  $packagename = $::operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => 'glusterfs-client',
  }

  $configfile_mode = $::operatingsystem ? {
    default => '0644',
  }

  $configfile_owner = $::operatingsystem ? {
    default => 'root',
  }

  $configfile_group = $::operatingsystem ? {
    default => 'root',
  }

  $configdir = $::operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => '/etc/glusterfs',
  }

}
