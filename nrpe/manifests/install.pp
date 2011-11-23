class nrpe::install {

  package { 'nrpe':
    ensure => present,
    name   => $nrpe::params::packagename,
  }

}
