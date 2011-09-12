class ntp::config {

  File { owner => root, group => root, mode  => 0644, }

  file { 'ntp.conf':
      ensure => present,
      path    => "${ntp::params::configfile}",
      content => template("ntp/ntp.conf.erb"),
  }

  file { 'ntp.sysconfig':
      ensure => present,
      path    => "${ntp::params::sysconfigfile}",
      content => template("ntp/ntpd.erb"),
  }

}
