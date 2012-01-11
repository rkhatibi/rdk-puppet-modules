class apt::puppetlabs {

  include apt::params

  exec { 'puppetlabs.key':
    command   => 'apt-key adv --keyserver keyserver.ubuntu.com --recv 4BD6EC30',
    logoutput => on_failure,
    unless    => 'grep puppet /etc/apt/trusted.gpg 1>/dev/null',
  }

  file { 'puppetlabs.list':
    ensure  => present,
    path    => '/etc/apt/sources.list.d/puppetlabs.list',
    owner   => root,
    group   => root,
    mode    => '0644',
    notify  => Class['apt::update'],
    content => template('apt/puppetlabs.list.erb'),
  }

}
