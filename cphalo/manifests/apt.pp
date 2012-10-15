class cphalo::apt {

  File {
    owner   => root,
    group   => root,
    mode    => '0644',
  }

  exec { 'cloudpassage.key':
    command   => 'curl http://packages.cloudpassage.com/cloudpassage.packages.key | apt-key add -',
    logoutput => on_failure,
    notify  => Class['apt::update'],
    unless    => 'grep cloudpassage /etc/apt/trusted.gpg 1>/dev/null',
  }

  file { 'cloudpassage.list':
    ensure  => present,
    path    => '/etc/apt/sources.list.d/cloudpassage.list',
    notify  => Class['apt::update'],
    content => template('cphalo/cloudpassage.list.erb'),
  }

  # this assumes you have a central apt class the runs the 
  # apt-get update only once for all updates so you don't 
  # have problems with apt choking during multiple updates
  #Class['apt::update'] -> Class['cphalo::install']

  # in case you don't have an apt update process
  exec { 'apt_update':
    command     => 'apt-get update',
    logoutput   => on_failure,
    refreshonly => true,
  }

  Exec['apt_update'] -> Class['cphalo::install']

}
