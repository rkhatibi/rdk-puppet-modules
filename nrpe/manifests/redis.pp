class nrpe::redis {

  include nrpe::params

  File {
    owner => $nrpe::params::config_owner,
    group => $nrpe::params::config_group,
    mode  => $nrpe::params::config_mode,
  }

  file { 'redis.cfg':
    ensure  => present,
    path    => "${nrpe::params::config_dir}/redis.cfg",
    require => Class['nrpe::config'],
    notify  => Class['nrpe::service'],
    content => template('nrpe/redis.cfg.erb'),
  }

  file { "check_redis":
    ensure  => present,
    path    => "${nrpe::params::pluginsdir}/check_redis",
    mode    => '0755',
    require => Class['nrpe::config'],
    source  => 'puppet:///modules/nrpe/check_redis',
  }

}
