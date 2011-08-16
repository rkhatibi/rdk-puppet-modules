class apt::update {

  include apt::params

  exec { 'apt_update':
      command     => 'apt-get update',
      logoutput   => on_failure,
      refreshonly => true,
      subscribe   => Class['apt::config'],
  }

}
