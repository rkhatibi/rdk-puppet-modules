class apt::varnish {

  File { owner => root, group => root, mode  => 0644, }

  file { 'varnish.keys':
      ensure  => present,
      path    => '/etc/apt/rkeys/varnish.keys',
      require => Class['apt::config'],
      source  => 'puppet:///modules/apt/varnish.keys',
  }

  file { 'varnish.list':
      ensure  => present,
      path    => '/etc/apt/sources.list.d/varnish.list',
      notify  => Class['apt::update'],
      require => Exec['varnish_key_add'],
      content => template('apt/varnish.list.erb'),
  }

  exec { 'varnish_key_add':
      command     => 'apt-key add /etc/apt/rkeys/varnish.keys',
      logoutput   => on_failure,
      refreshonly => true,
      subscribe   => File['varnish.keys'],
  }

}
