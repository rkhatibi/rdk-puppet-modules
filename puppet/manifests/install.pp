class puppet::install {

  package { 'puppet':
    ensure => present,
    name   => $puppet::params::packagename,
  }

  package { 'facter':
    ensure => present,
  }

}
