class mysql::service::disableboot inherits mysql::service {

  Service['mysql'] { enable => false, }

}
