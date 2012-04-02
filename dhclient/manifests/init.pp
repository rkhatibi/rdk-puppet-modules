class dhclient {

  include dhclient::params, dhclient::data
  include dhclient::install, dhclient::config
  Class['dhclient::install'] -> Class['dhclient::config']

}
