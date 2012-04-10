class cphalo::service::disable inherits cphalo::service {

  Service['cphalo'] { ensure => stopped, enable => false, }

}
