class syslog::puppet {

  include syslog::params

  file { 'syslog-puppet.conf':
    ensure  => present,
    path    => "${syslog::params::configdir}/40-puppet.conf",
    mode    => "${syslog::params::configfile_mode}",
    owner   => "${syslog::params::configfile_owner}",
    group   => "${syslog::params::configfile_group}",
    notify  => Class['syslog::service'],
    require => Class['syslog::config'],
    content => template('syslog/syslog-puppet.conf.erb'),
  }

}
