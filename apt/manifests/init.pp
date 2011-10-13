class apt {

  include apt::params, apt::install, apt::config, apt::update
  Class['apt::install'] -> Class['apt::config'] ~> Class['apt::update']

}
