class ntp::service::disable inherits ntp::service {

  Service['ntp'] { ensure => stopped, enable => false, }

}
