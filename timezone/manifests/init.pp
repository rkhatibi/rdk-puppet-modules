class timezone {

  include timezone::params, timezone::install, timezone::config
  Class['timezone::install'] -> Class['timezone::config']

}
