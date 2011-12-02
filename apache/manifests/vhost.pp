define apache::vhost ($priority=99) {

# $name is a reserved variable, it works based on the name of this define
# apache::vhost { "this_becomes_name": }

  include apache::params

  file { "apache/vhost.d/${name}":
    ensure  => present,
    path    => "${apache::params::vhostdir}/${priority}_${name}",
    mode    => "${apache::params::configfile_mode}",
    owner   => "${apache::params::configfile_owner}",
    group   => "${apache::params::configfile_group}",
    notify  => Class['apache::service'],
    require => Class['apache::config'],
    content => template("apache/vhosts/$name.erb"),
  }

}
