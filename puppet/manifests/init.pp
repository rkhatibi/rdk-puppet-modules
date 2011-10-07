class puppet {

  include puppet::params, puppet::install, puppet::config, puppet::service

  # uncomment if logrotate and syslog classes are included
  #include logrotate::puppet
  #include syslog::puppet

  Class['puppet::install'] -> Class['puppet::config'] -> Class['puppet::service']

}
