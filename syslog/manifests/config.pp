class syslog::config {

  file { 'syslog.d':
    ensure => directory,
    name   => "${syslog::params::configdir}",
    mode   => "${syslog::params::configfile_mode}",
    owner  => "${syslog::params::configfile_owner}",
    group  => "${syslog::params::configfile_group}",
  }

}
