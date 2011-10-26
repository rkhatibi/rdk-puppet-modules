class apache::service {

  service { 'apache':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => $apache::params::hasstatus,
    name       => $apache::params::servicename,
    pattern    => $apache::params::servicepattern,
  }

}
