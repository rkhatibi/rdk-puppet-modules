class cphalo {

  # apt stuff might go here
  #class { 'apt::cloudpassage': stage => 'pre' }

  include cphalo::params, cphalo::data
  include cphalo::install, cphalo::firstart, cphalo::service

  Class['cphalo::install'] ~> Class['cphalo::firstart'] ~> Class['cphalo::service']

}
