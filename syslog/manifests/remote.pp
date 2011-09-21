class syslog::remote {

  include syslog::params

  file { 'syslog-remote.conf':
    ensure  => present,
    path    => "${syslog::params::configdir}/30-remote.conf",
    mode    => "${syslog::params::configfile_mode}",
    owner   => "${syslog::params::configfile_owner}",
    group   => "${syslog::params::configfile_group}",
    notify  => Class['syslog::service'],
    require => Class['syslog::config'],
    source  => 'puppet:///modules/syslog/syslog-remote.conf',
  }

}
