class apt::config {

  File {
    owner   => root,
    group   => root,
    mode    => '0644',
  }

  file { 'apt.conf':
    ensure => present,
    path   => '/etc/apt/apt.conf',
    source => 'puppet:///modules/apt/apt.conf',
  }

  file { 'sources.list':
    ensure  => present,
    path    => '/etc/apt/sources.list',
    content => template('apt/sources.list.erb'),
  }

  file { '/etc/apt/rkeys':
    ensure  => directory,
    mode    => '0755',
    force   => true,
    purge   => true,
    recurse => true,
  }

  file { '/etc/apt/sources.list.d':
    ensure  => directory,
    mode    => '0755',
    force   => true,
    purge   => true,
    recurse => true,
  }

}
