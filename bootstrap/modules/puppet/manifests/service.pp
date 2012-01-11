class puppet::service {

  service { 'puppet_agent':
    ensure     => stopped,
    enable     => false,
    hasrestart => true,
    hasstatus  => $puppet::params::hasstatus,
    name       => $puppet::params::servicename,
  }

}
