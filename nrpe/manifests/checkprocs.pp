define nrpe::checkprocs ($n_warning, $n_critical, $n_options) {

  File {
    owner => $nrpe::params::config_owner,
    group => $nrpe::params::config_group,
    mode  => $nrpe::params::config_mode,
  }

  file { "nrpe_check_procs_${name}.cfg":
    ensure  => present,
    path    => "${nrpe::params::config_dir}/check_procs_${name}.cfg",
    require => Class['nrpe::config'],
    notify  => Class['nrpe::service'],
    content => template('nrpe/checkprocs.cfg.erb'),
  }

}
