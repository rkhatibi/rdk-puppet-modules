class glusterfs::config {

  file { '/glusters':
    ensure => directory,
    owner  => root,
    group  => root,
    mode   => '0755',
  }

}
