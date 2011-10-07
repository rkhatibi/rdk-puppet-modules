class puppet::service {

  service { 'puppet_agent':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => $puppet::params::hasstatus,
    name       => $puppet::params::servicename,
  }

}
