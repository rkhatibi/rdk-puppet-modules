class glusterfsd::install {

  package { 'gluster-sever':
    ensure => present,
    name   => $glusterfsd::params::packagename,
  }

}
