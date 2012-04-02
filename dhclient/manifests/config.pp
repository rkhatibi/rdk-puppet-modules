class dhclient::config {

  File {
    owner   => $dhclient::params::config_owner,
    group   => $dhclient::params::config_group,
    mode    => $dhclient::params::config_mode,
  }

  file { 'dhclient.conf':
    ensure  => present,
    path    => $dhclient::params::config_file,
    content => template('dhclient/dhclient.conf.erb'),
  }

}
