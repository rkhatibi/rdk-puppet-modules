class glusterfsd::config {

  File {
    owner => root,
    group => root,
    mode  => '0644'
  }

  file { 'glusterfsd.vol':
    ensure  => present,
    path    => "${glusterfsd::params::configdir}/${glusterfsd::params::configfile}",
    content => template('glusterfsd/glusterfsd.vol.erb'),
  }

}
