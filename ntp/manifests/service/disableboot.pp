class ntp::service::disableboot inherits ntp::service {

  Service['ntp'] { enable => false, }

}
