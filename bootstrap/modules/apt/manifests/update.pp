class apt::update {

  exec { 'apt_update':
      command     => 'apt-get update',
      logoutput   => on_failure,
      refreshonly => true,
  }

}
