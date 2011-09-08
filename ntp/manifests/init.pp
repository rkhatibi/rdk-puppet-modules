class ntp {

  include ntp::params, ntp::install, ntp::config, ntp::service 

  Class['ntp::install'] -> Class['ntp::config'] ~> Class['ntp::service']

}
