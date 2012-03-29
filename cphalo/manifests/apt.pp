class cphalo::apt {

  File {
    owner   => root,
    group   => root,
    mode    => '0644',
  }

  exec { 'cloudpassage.key':
    command   => 'curl http://packages.cloudpassage.com/cloudpassage.packages.key | apt-key add -',
    logoutput => on_failure,
    unless    => 'grep cloudpassage /etc/apt/trusted.gpg 1>/dev/null',
  }

  file { 'cloudpassage.list':
    ensure  => present,
    path    => '/etc/apt/sources.list.d/cloudpassage.list',
    notify  => Class['apt::update'],
    content => template('cphalo/cloudpassage.list.erb'),
  }

}
