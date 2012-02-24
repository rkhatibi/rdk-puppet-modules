class nrpe {

  include nrpe::params, nrpe::data
  include nrpe::install, nrpe::config, nrpe::service
  Class['nrpe::install'] -> Class['nrpe::config'] ~> Class['nrpe::service']

}
