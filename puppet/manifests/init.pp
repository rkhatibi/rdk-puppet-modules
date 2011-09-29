class puppet {

  include puppet::params, puppet::install, puppet::config, puppet::service
  include logrotate::puppet, syslog::puppet

  Class['puppet::install'] -> Class['puppet::config'] ~> Class['puppet::service']

}
