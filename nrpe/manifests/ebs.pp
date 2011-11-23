define nrpe::ebs {

  include nrpe::params

  file { "ebs-${name}.cfg":
    ensure  => present,
    path    => "${nrpe::params::config_dir}/ebs-${name}.cfg",
    content => template('nrpd/ebs.cfg.erb'),
  }

}
