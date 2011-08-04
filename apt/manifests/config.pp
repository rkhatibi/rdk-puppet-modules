class apt::config {

  include apt::params

  File { owner => "root", group => "root", mode  => 0644, }

  file { "sources.list":
      ensure  => present,
      path    => "/etc/apt/sources.list",
      require => Class["apt::install"],
      source  => "puppet:///modules/apt/sources.list.${lsbdistrelease}",
  }

  file { "/etc/apt/rkeys":
      ensure => directory,
      force   => true,
      purge   => true,
      recurse => true,
      require => Class["apt::install"],
      notify  => Class["apt::update"],
  }

  file { "/etc/apt/sources.list.d":
      ensure  => directory,
      mode    => 0755,
      force   => true,
      purge   => true,
      recurse => true,
      require => Class["apt::install"],
      notify  => Class["apt::update"],
  }

}
