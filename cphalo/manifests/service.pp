class cphalo::service {

  service { 'cphalo':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    name       => $cphalo::params::servicename,
    start      => "service cphalo start --tag=$cphalo::data::tags",
  }

}
