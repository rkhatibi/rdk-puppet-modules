class timezone::config {

  file { '/etc/localtime':
    ensure => symlink,
    target => "/usr/share/zoneinfo/${timezone::params::zone}",
  }

}
