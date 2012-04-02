class dhclient::install {

  package { 'dhclient':
    ensure => present,
    name   => $dhclient::params::packagename,
  }

}
