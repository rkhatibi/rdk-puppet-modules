class glusterfsd {

  include glusterfsd::params, glusterfsd::install, glusterfsd::config, glusterfsd::service
  Class['glusterfsd::install'] -> Class['glusterfsd::config'] ~> Class['glusterfsd::service']

}
