class syslog::service {

  service { 'syslog':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => "${syslog::params::hasstatus}",
    name       => "${syslog::params::servicename}",
    pattern    => "${syslog::params::processname}",
  }

}
