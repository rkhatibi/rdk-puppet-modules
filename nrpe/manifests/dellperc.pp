class nrpe::dellperc {

  include nrpe::params

  File {
    owner => $nrpe::params::config_owner,
    group => $nrpe::params::config_group,
    mode  => $nrpe::params::config_mode,
  }

  file { 'check_dellperc':
    ensure  => present,
    path    => "${nrpe::params::pluginsdir}/check_dellperc",
    mode    => '0755',
    require => Class['nrpe::config'],
    source  => 'puppet:///modules/nrpe/check_dellperc',
  }

  file { 'dellperc.cfg':
    ensure  => present,
    path    => "${nrpe::params::config_dir}/dellperc.cfg",
    require => Class['nrpe::config'],
    notify  => Class['nrpe::service'],
    content => "command[check_dellperc]=${nrpe::params::pluginsdir}/check_dellperc",
  }

  file { 'nrpe_sudoers':
    ensure  => present,
    path    => '/etc/sudoers.d/nrpe_sudoers',
    mode    => '0440',
    require => Class['sudo'],
    source  => 'puppet:///modules/nrpe/nrpe_sudoers',
  }

  package { 'perl-Getopt-Long-Descriptive':
    ensure => present,
  }

}
