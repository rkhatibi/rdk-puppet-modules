class apt::config {

  File { owner => root, group => root, mode  => 0644, }

  file { 'sources.list':
      ensure  => present,
      path    => '/etc/apt/sources.list',
      source  => "puppet:///modules/apt/sources.list.${::lsbdistrelease}",
  }

  file { '/etc/apt/rkeys':
      ensure  => directory,
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
