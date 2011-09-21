class syslog {

  include syslog::params, syslog::install, syslog::config, syslog::service
  Class['syslog::install'] -> Class['syslog::config'] ~> Class['syslog::service']

}
