class cron::service {

  service { "cron":
      name       => "${cron::params::servicename}",
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => "${cron::params::hasstatus}",
      pattern    => "${cron::params::processname}",
  }

}
