class ntp::config {

  include ntp::params

  File {
    owner => "root",
    group => "root",
    mode  => 0644,
  }

  file { "ntp.conf":
      ensure => present,
      path    => "${ntp::params::configfile}",
      content => template("ntp/ntp.conf.erb"),
      require => Class["ntp::install"],
      notify  => Class["ntp::service"],
  }

  file { "ntp.sysconfig":
      ensure => present,
      path    => "${ntp::params::sysconfigfile}",
      content => template("ntp/ntpd.erb"),
      require => Class["ntp::install"],
      notify  => Class["ntp::service"],
  }

}
