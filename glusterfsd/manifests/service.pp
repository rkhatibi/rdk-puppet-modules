class glusterfsd::service {

  service { 'gluster-server':
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => $glusterfsd::params::hasstatus,
      name       => $glusterfsd::params::servicename,
      pattern    => $glusterfsd::params::servicepattern,
  }

}
