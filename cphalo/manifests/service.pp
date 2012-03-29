class cphalo::service {

  service { 'cphalo':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    name       => $cphalo::params::servicename,
  }

}
