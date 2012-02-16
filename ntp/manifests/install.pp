class ntp::install {

  package { 'ntp':
    ensure => present,
    name   => $ntp::params::packagename,
  }

}
