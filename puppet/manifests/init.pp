class puppet {

  case $::operatingsystem {
    /(?i:Ubuntu|Debian)/: {
      class { 'apt::puppetlabs': stage => 'pre' }
    }
    default: {}
  }

  include puppet::params, puppet::install, puppet::config, puppet::service

  # uncomment if logrotate and syslog classes are included
  #include logrotate::puppet
  #include syslog::puppet

  # don't restart Puppet on config change unlike other classes
  Class['puppet::install'] -> Class['puppet::config'] -> Class['puppet::service']

}
