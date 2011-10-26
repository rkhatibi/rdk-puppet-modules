class ruby {

  include ruby::params, ruby::install, ruby::config
  Class['ruby::install'] -> Class['ruby::config']

}
