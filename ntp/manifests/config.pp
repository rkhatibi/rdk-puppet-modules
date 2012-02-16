class ntp::config {

  File {
    owner => $ntp::params::config_owner,
    group => $ntp::params::config_group,
    mode  => $ntp::params::config_mode,
  }

  file { 'ntp.conf':
    ensure  => present,
    path    => $ntp::params::config_file,
    content => template('ntp/ntp.conf.erb'),
  }

  file { 'ntp.config_init':
    ensure  => present,
    path    => $ntp::params::config_init,
    content => template('ntp/ntpd.erb'),
  }

}
