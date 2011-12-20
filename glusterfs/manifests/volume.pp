define glusterfs::volume {

  include glusterfs::params

  File {
    owner => $glusterfs::params::configfile_owner,
    group => $glusterfs::params::configfile_group,
    mode  => $glusterfs::params::configfile_mode,
  }

  file { "gluster_${name}.vol":
    ensure  => present,
    name    => "${glusterfs::params::configdir}/glusterfs_${name}.vol",
    require => Class['glusterfs::config'],
    content => template("glusterfs/${name}.vol.erb"),
  }

  file { "/glusters/${name}":
    ensure => directory,
  }

  mount { "/glusters/${name}":
    ensure   => mounted,
    device   => "${glusterfs::params::configdir}/glusterfs_${name}.vol",
    fstype   => 'glusterfs',
    name     => "/glusters/${name}",
    options  => 'default,noatime',
    remounts => true,
    require  => [ File["gluster_${name}.vol"], File["/glusters/${name}"], ],
  }

}
