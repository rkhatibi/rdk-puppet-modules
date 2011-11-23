class nrpe {

  # extlookups for monitoring hosts

  include nrpe::params, nrpe::install, nrpe::config, nrpe::service
  Class['nrpe::install'] -> Class['nrpe::config'] ~> Class['nrpe::service']

  include nagios::plugins

}
