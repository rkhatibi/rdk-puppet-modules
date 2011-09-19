class mysql::service::disable inherits mysql::service {

  Service['mysql'] { ensure => stopped, enable => false, }

}
