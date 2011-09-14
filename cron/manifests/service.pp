class cron::service {

  service { 'cron':
      ensure     => running,
      name       => "${cron::params::servicename}",
      enable     => true,
      hasrestart => true,
      hasstatus  => "${cron::params::hasstatus}",
      pattern    => "${cron::params::processname}",
  }

}
