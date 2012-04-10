class cphalo::service::disableboot inherits cphalo::service {

  Service['cphalo'] { enable => false, }

}
