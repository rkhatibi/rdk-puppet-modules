class ntp::service {

  service { 'ntp':
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => $ntp::params::hasstatus,
      name       => $ntp::params::servicename,
      pattern    => $ntp::params::servicepattern,
  }

}
