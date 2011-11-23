class nrpe::config {

  File {
    owner => $nrpe::params::config_owner,
    group => $nrpe::params::config_group,
    mode  => $nrpe::params::config_mode,
  }

  file { 'nrpe.conf':
    ensure  => present,
    path    => $nrpe::params::config_file,
    content => template('nrpe/nrpe.cfg.erb'),
  }

  file { 'nrpe.d':
    ensure => directory,
    path   => $nrpe::params::config_dir,
  }

}
