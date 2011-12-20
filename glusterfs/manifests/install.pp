class glusterfs::install {

  package { 'glusterfs-client':
    ensure => present,
    name   => $glusterfs::params::packagename,
  }

}
