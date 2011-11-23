class nrpe::service {

  service { 'nrpe':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => $nrpe::params::hasstatus,
    name       => $nrpe::params::servicename,
    pattern    => $nrpe::params::processname,
  }

}
