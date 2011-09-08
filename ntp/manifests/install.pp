class ntp::install {

  package { 'ntp':
      name   => "${ntp::params::packagename}",
      ensure => present,
  }

}
