class update {

  include update::params

  exec { 'update':
    command   => $update::params::command,
    logoutput => on_failure,
    timeout   => 1800,
  }

}
