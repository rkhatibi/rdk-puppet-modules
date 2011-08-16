class ntp::install {

  include ntp::params

  package { "ntp":
      name   => "${ntp::params::packagename}",
      ensure => present,
  }

}
