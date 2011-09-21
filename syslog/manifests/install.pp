class syslog::install {

  package { 'syslog':
    ensure => present,
    name   => "${syslog::params::packagename}",
  }

}
