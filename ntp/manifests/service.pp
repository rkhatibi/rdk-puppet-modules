class ntp::service {

  include ntp::params

  service { "ntp":
      enable     => true,
      ensure     => running,
      hasrestart => true,
      hasstatus  => "${ntp::params::hasstatus}",
      name       => "${ntp::params::servicename}",
      pattern    => "${ntp::params::servicepattern}",
      require    => Class["ntp::config"],
  }

}
