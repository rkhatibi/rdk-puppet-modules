class ntp::service {

  service { 'ntp':
      enable     => true,
      ensure     => running,
      hasrestart => true,
      hasstatus  => "${ntp::params::hasstatus}",
      name       => "${ntp::params::servicename}",
      pattern    => "${ntp::params::servicepattern}",
  }

}
